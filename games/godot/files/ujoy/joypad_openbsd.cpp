/*************************************************************************/
/*  joypad_openbsd.cpp                                                     */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                      https://godotengine.org                          */
/*************************************************************************/
/* Copyright (c) 2007-2022 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2022 Godot Engine contributors (cf. AUTHORS.md).   */
/*                                                                       */
/* Permission is hereby granted, free of charge, to any person obtaining */
/* a copy of this software and associated documentation files (the       */
/* "Software"), to deal in the Software without restriction, including   */
/* without limitation the rights to use, copy, modify, merge, publish,   */
/* distribute, sublicense, and/or sell copies of the Software, and to    */
/* permit persons to whom the Software is furnished to do so, subject to */
/* the following conditions:                                             */
/*                                                                       */
/* The above copyright notice and this permission notice shall be        */
/* included in all copies or substantial portions of the Software.       */
/*                                                                       */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.*/
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                */
/*************************************************************************/

//author: Thomas Frohwein <thfr@openbsd.org>
#ifdef JOYDEV_ENABLED

#include "joypad_openbsd.h"

#include <sys/param.h>

#include <errno.h>
#include <fcntl.h>
#include <unistd.h>

extern "C" {
	#include <dev/usb/usb.h>
	#include <dev/usb/usbhid.h>
	#include <usbhid.h>
}

#define HUG_DPAD_UP         0x90
#define HUG_DPAD_DOWN       0x91
#define HUG_DPAD_RIGHT      0x92
#define HUG_DPAD_LEFT       0x93

#define HAT_CENTERED        0x00
#define HAT_UP              0x01
#define HAT_RIGHT           0x02
#define HAT_DOWN            0x04
#define HAT_LEFT            0x08
#define HAT_RIGHTUP         (HAT_RIGHT|HAT_UP)
#define HAT_RIGHTDOWN       (HAT_RIGHT|HAT_DOWN)
#define HAT_LEFTUP          (HAT_LEFT|HAT_UP)
#define HAT_LEFTDOWN        (HAT_LEFT|HAT_DOWN)

#define REP_BUF_DATA(rep) ((rep)->buf->ucr_data)

static struct
{
	int uhid_report;
	hid_kind_t kind;
	const char *name;
} const repinfo[] = {
	{UHID_INPUT_REPORT, hid_input, "input"},
	{UHID_OUTPUT_REPORT, hid_output, "output"},
	{UHID_FEATURE_REPORT, hid_feature, "feature"}
};

enum
{
	REPORT_INPUT,
	REPORT_OUTPUT,
	REPORT_FEATURE
};

enum
{
	JOYAXE_X,
	JOYAXE_Y,
	JOYAXE_Z,
	JOYAXE_SLIDER,
	JOYAXE_WHEEL,
	JOYAXE_RX,
	JOYAXE_RY,
	JOYAXE_RZ,
	JOYAXE_count
};

static int
report_alloc(struct report *r, struct report_desc *rd, int repind)
{
	int len;
	len = hid_report_size(rd, repinfo[repind].kind, r->rid);
	if (len < 0) {
		ERR_PRINT("Negative HID report siz");
		return ERR_PARAMETER_RANGE_ERROR;
	}
	r->size = len;

	if (r->size > 0) {
		r->buf = (usb_ctl_report *)malloc(sizeof(*r->buf) - sizeof(REP_BUF_DATA(r)) + r->size);
		if (r->buf == NULL)
			return ERR_OUT_OF_MEMORY;
	} else {
		r->buf = NULL;
	}

	r->status = report::SREPORT_CLEAN;
	return OK;
}

static int
usage_to_joyaxe(unsigned usage)
{
	switch (usage) {
	case HUG_X:
		return JOYAXE_X;
	case HUG_Y:
		return JOYAXE_Y;
	case HUG_Z:
		return JOYAXE_Z;
	case HUG_SLIDER:
		return JOYAXE_SLIDER;
	case HUG_WHEEL:
		return JOYAXE_WHEEL;
	case HUG_RX:
		return JOYAXE_RX;
	case HUG_RY:
		return JOYAXE_RY;
	case HUG_RZ:
		return JOYAXE_RZ;
	default:
		return -1;
	}
}

static unsigned
hatval_conversion(int hatval)
{
	static const unsigned hat_dir_map[8] = {
		HAT_UP, HAT_RIGHTUP, HAT_RIGHT, HAT_RIGHTDOWN,
		HAT_DOWN, HAT_LEFTDOWN, HAT_LEFT, HAT_LEFTUP
	};
	if ((hatval & 7) == hatval)
		return hat_dir_map[hatval];
	else
		return HAT_CENTERED;
}

/* calculate the value from the state of the dpad */
int
dpad_conversion(int *dpad)
{
	if (dpad[2]) {
		if (dpad[0])
			return HAT_RIGHTUP;
		else if (dpad[1])
			return HAT_RIGHTDOWN;
		else
			return HAT_RIGHT;
	} else if (dpad[3]) {
		if (dpad[0])
			return HAT_LEFTUP;
		else if (dpad[1])
			return HAT_LEFTDOWN;
		else
			return HAT_LEFT;
	} else if (dpad[0]) {
		return HAT_UP;
	} else if (dpad[1]) {
		return HAT_DOWN;
	}
	return HAT_CENTERED;
}

JoypadOpenBSD::Joypad::Joypad() {
	fd = -1;
	dpad = 0;
	devpath = "";
}

JoypadOpenBSD::Joypad::~Joypad() {
}

void JoypadOpenBSD::Joypad::reset() {
	dpad = 0;
	fd = -1;

	InputDefault::JoyAxis jx;
	jx.min = -1;
	jx.value = 0.0f;
}

JoypadOpenBSD::JoypadOpenBSD(InputDefault *in) {
	input = in;
	joy_thread.start(joy_thread_func, this);
	hid_init(NULL);
}

JoypadOpenBSD::~JoypadOpenBSD() {
	exit_monitor.set();
	joy_thread.wait_to_finish();
	close_joypad();
}

void JoypadOpenBSD::joy_thread_func(void *p_user) {
	if (p_user) {
		JoypadOpenBSD *joy = (JoypadOpenBSD *)p_user;
		joy->run_joypad_thread();
	}
}

void JoypadOpenBSD::run_joypad_thread() {
	monitor_joypads();
}

void JoypadOpenBSD::monitor_joypads() {
	while (!exit_monitor.is_set()) {
		joy_mutex.lock();
		for (int i = 0; i < 32; i++) {
			char fname[64];
			sprintf(fname, "/dev/ujoy/%d", i);
			if (attached_devices.find(fname) == -1) {
				open_joypad(fname);
			}
		}
		joy_mutex.unlock();
		usleep(1000000); // 1s
	}
}

int JoypadOpenBSD::get_joy_from_path(String p_path) const {
	for (int i = 0; i < JOYPADS_MAX; i++) {
		if (joypads[i].devpath == p_path) {
			return i;
		}
	}
	return -2;
}

void JoypadOpenBSD::close_joypad(int p_id) {
	if (p_id == -1) {
		for (int i = 0; i < JOYPADS_MAX; i++) {
			close_joypad(i);
		};
		return;
	} else if (p_id < 0)
		return;

	Joypad &joy = joypads[p_id];

	if (joy.fd != -1) {
		close(joy.fd);
		joy.fd = -1;
		attached_devices.remove(attached_devices.find(joy.devpath));
		input->joy_connection_changed(p_id, false, "");
	};
}

void JoypadOpenBSD::setup_joypad_properties(int p_id) {
	Error err;
	Joypad *joy = &joypads[p_id];
	struct hid_item hitem;
	struct hid_data *hdata;
	struct report *rep = NULL;
	int i;
	int ax;

	for (ax = 0; ax < JOYAXE_count; ax++)
		joy->axis_map[ax] = -1;

	joy->type = Joypad::BSDJOY_UHID;	// TODO: hardcoded; later check if /dev/joyX or /dev/ujoy/X
	joy->repdesc = hid_get_report_desc(joy->fd);
	if (joy->repdesc == NULL) {
		ERR_PRINT("getting USB report descriptor");
	}
	rep = &joy->inreport;
	if (ioctl(joy->fd, USB_GET_REPORT_ID, &rep->rid) < 0) {
		rep->rid = -1;	/* XXX */
	}
	err = (Error)report_alloc(rep, joy->repdesc, REPORT_INPUT);
	if (err != OK) {
		ERR_PRINT("allocating report descriptor");
	}
	if (rep->size <= 0) {
		ERR_PRINT("input report descriptor has invalid length");
	}
	hdata = hid_start_parse(joy->repdesc, 1 << hid_input, rep->rid);
	if (hdata == NULL) {
		ERR_PRINT("cannot start HID parser");
	}

	int num_buttons = 0;
	int num_axes = 0;
	int num_hats = 0;

	while (hid_get_item(hdata, &hitem)) {
		switch (hitem.kind) {
		case hid_input:
			switch (HID_PAGE(hitem.usage)) {
			case HUP_GENERIC_DESKTOP: {
				unsigned usage = HID_USAGE(hitem.usage);
				int joyaxe = usage_to_joyaxe(usage);
				if (joyaxe >= 0) {
					joy->axis_map[joyaxe] = 1;
				} else if (usage == HUG_HAT_SWITCH || usage == HUG_DPAD_UP) {
					num_hats++;
				}
				break;
			}
			case HUP_BUTTON:
				num_buttons++;
				break;
			default:
				break;
			}
		default:
			break;
		}
	}
	hid_end_parse(hdata);
	for (i = 0; i < JOYAXE_count; i++)
		if (joy->axis_map[i] > 0)
			joy->axis_map[i] = num_axes++;
			
	if (num_axes == 0 && num_buttons == 0 && num_hats == 0) {
		ERR_PRINT("Not a joystick!");
	} else {
		printf("joypad %d: %d axes %d buttons %d hats\n", p_id, num_axes, num_buttons, num_hats);
	}
	joy->force_feedback = false;
	joy->ff_effect_timestamp = 0;
}

void JoypadOpenBSD::open_joypad(const char *p_path) {
	int joy_num = input->get_unused_joy_id();
	if (joy_num < 0) {
		ERR_PRINT("no ID available to assign to joypad device");
		return;
	}
	int fd = open(p_path, O_RDONLY | O_NONBLOCK);
	if (fd != -1 && joy_num != -1) {
		// add to attached devices so we don't try to open it again
		attached_devices.push_back(String(p_path));

		String name = "";
		joypads[joy_num].reset();

		Joypad &joy = joypads[joy_num];
		joy.fd = fd;
		joy.devpath = String(p_path);
		setup_joypad_properties(joy_num);
		String uidname = "00";
		input->joy_connection_changed(joy_num, true, name, uidname);
	}
}

void JoypadOpenBSD::joypad_vibration_start(int p_id, float p_weak_magnitude, float p_strong_magnitude, float p_duration, uint64_t p_timestamp) {
	/* not supported */
}

void JoypadOpenBSD::joypad_vibration_stop(int p_id, uint64_t p_timestamp) {
	/* not supported */
}

InputDefault::JoyAxis JoypadOpenBSD::axis_correct(int min, int max, int p_value) const {
        InputDefault::JoyAxis jx;

        if (min < 0) {
                jx.min = -1;
                if (p_value < 0) {
                        jx.value = (float)-p_value / min;
                } else {
                        jx.value = (float)p_value / max;
                }
        } else if (min == 0) {
                jx.min = 0;
                jx.value = 0.0f + (float)p_value / max;
        }
        return jx;
}

void JoypadOpenBSD::process_joypads() {
	struct hid_item hitem;
	struct hid_data *hdata;
	struct report *rep;
	int nbutton, naxe = -1;
	int v;
	int dpad[4] = { 0, 0, 0, 0 };
	int actualbutton;

	if (joy_mutex.try_lock() != OK) {
		return;
	}
	for (int i = 0; i < JOYPADS_MAX; i++) {
		if (joypads[i].fd == -1) continue;

		Joypad *joy = &joypads[i];
		rep = &joy->inreport;

		while (true) {
			ssize_t r = read(joy->fd, REP_BUF_DATA(rep), rep->size);
			if (r < 0 || (size_t)r != rep->size) {
				break;
			}

			hdata = hid_start_parse(joy->repdesc, 1 << hid_input, rep->rid);
			if (hdata == NULL) {
				continue;
			}

			for (nbutton = 0; hid_get_item(hdata, &hitem) > 0;) {
				switch (hitem.kind) {
				case hid_input:
					unsigned usage;
					int joyaxe;
					switch (HID_PAGE(hitem.usage)) {
					case HUP_GENERIC_DESKTOP:
						usage = HID_USAGE(hitem.usage);
						joyaxe = usage_to_joyaxe(usage);
						if (joyaxe >= 0) {
							naxe = joy->axis_map[joyaxe];
							v = hid_get_data(REP_BUF_DATA(rep), &hitem);
							/* XInput controllermapping relies on inverted Y axes.
							 * These devices have a 16bit signed space, as opposed
							 * to older DInput devices (8bit unsigned), so
							 * hitem.logical_maximum can be used to differentiate them.
							 */
							if ((joyaxe == JOYAXE_Y || joyaxe == JOYAXE_RY)
							    && hitem.logical_maximum > 255) {
								    if (v != 0)
									    v = ~v;
							}
							input->joy_axis(i, joyaxe, axis_correct(hitem.logical_minimum, hitem.logical_maximum, v));
							break;
						} else if (usage == HUG_HAT_SWITCH) {
							v = hid_get_data(REP_BUF_DATA(rep), &hitem);
							joy->dpad = hatval_conversion(v);
						} else if (usage == HUG_DPAD_UP) {
							dpad[0] = hid_get_data(REP_BUF_DATA(rep), &hitem);
							joy->dpad = dpad_conversion(dpad);
						} else if (usage == HUG_DPAD_DOWN) {
							dpad[1] = hid_get_data(REP_BUF_DATA(rep), &hitem);
							joy->dpad = dpad_conversion(dpad);
						} else if (usage == HUG_DPAD_RIGHT) {
							dpad[2] = hid_get_data(REP_BUF_DATA(rep), &hitem);
							joy->dpad = dpad_conversion(dpad);
						} else if (usage == HUG_DPAD_LEFT) {
							dpad[3] = hid_get_data(REP_BUF_DATA(rep), &hitem);
							joy->dpad = dpad_conversion(dpad);
						}
						input->joy_hat(i, joy->dpad);
						break;
					case HUP_BUTTON:
						v = hid_get_data(REP_BUF_DATA(rep), &hitem);
						actualbutton = HID_USAGE(hitem.usage) - 1;	// buttons are zero-based
						input->joy_button(i, actualbutton, v);
					default:
						continue;
					}
					break;
				default:
					break;
				}
			}
			hid_end_parse(hdata);
		}
	}
	joy_mutex.unlock();
}

#endif
