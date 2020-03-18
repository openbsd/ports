////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2016 Laurent Gomila (laurent@sfml-dev.org)
//               2013-2013 David Demelier (demelier.david@gmail.com)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// Headers
////////////////////////////////////////////////////////////
#include <SFML/Window/JoystickImpl.hpp>
#include <SFML/System/Err.hpp>
#include <sys/stat.h>
#include <dirent.h>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <map>
#include <string>
#include <utility>

////////////////////////////////////////////////////////////
/// \brief This file implements OpenBSD driver joystick
///
/// It has been tested on a Logitech F310 in gamepad and
/// joystick mode.
///
////////////////////////////////////////////////////////////

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

/* calculate the value from the state of the dpad */
int
dpad_to_sfml(int32_t *dpad)
{
    if (dpad[2]) {
        if (dpad[0])
            return HAT_RIGHTUP;
        else if (dpad[1])
            return HAT_RIGHTDOWN;
        else
            return  HAT_RIGHT;
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


namespace
{
    std::map<unsigned int, std::string> plugged;
    std::map<int, std::pair<int, int> > hatValueMap;

    bool isJoystick(const char *name)
    {
        int file = ::open(name, O_RDONLY | O_NONBLOCK);
        int id;

        if (file < 0)
            return false;

        report_desc_t desc = hid_get_report_desc(file);

        if (!desc)
        {
            ::close(file);
            return false;
        }

        ioctl(file, USB_GET_REPORT_ID, &id);
        hid_data_t data = hid_start_parse(desc, 1 << hid_input, id);

        if (!data)
        {
            hid_dispose_report_desc(desc);
            ::close(file);
            return false;
        }

        hid_item_t item;

        // Assume it isn't
        bool result = false;

        while (hid_get_item(data, &item) > 0)
        {
            if ((item.kind == hid_collection) && (HID_PAGE(item.usage) == HUP_GENERIC_DESKTOP))
            {
		
                if ((HID_USAGE(item.usage) == HUG_JOYSTICK) || (HID_USAGE(item.usage) == HUG_GAME_PAD))
                {

                    result = true;
                }
            }
        }

        hid_end_parse(data);
        hid_dispose_report_desc(desc);
        ::close(file);

        return result;
    }

    void updatePluggedList()
    {
        /*
         * Devices /dev/uhid<x> are shared between joystick and any other
         * human interface device. We need to iterate over all found devices
         * and check if they are joysticks. The index of JoystickImpl::open
         * does not match the /dev/uhid<index> device!
         */
        DIR* directory = opendir("/dev");

        if (directory)
        {
            int joystickCount = 0;
            struct dirent* directoryEntry = readdir(directory);

            while (directoryEntry && joystickCount < sf::Joystick::Count)
            {
                if (!std::strncmp(directoryEntry->d_name, "uhid", 4))
                {
                    std::string name("/dev/");
                    name += directoryEntry->d_name;

                    if (isJoystick(name.c_str()))
                        plugged[joystickCount++] = name;
                }

                directoryEntry = readdir(directory);
            }

            closedir(directory);
        }
    }

    int usageToAxis(int usage)
    {
        switch (usage)
        {
            case HUG_X:  return sf::Joystick::X;
            case HUG_Y:  return sf::Joystick::Y;
            case HUG_Z:  return sf::Joystick::Z;
            case HUG_RZ: return sf::Joystick::R;
            case HUG_RX: return sf::Joystick::U;
            case HUG_RY: return sf::Joystick::V;
            default:     return -1;
        }
    }

    void hatValueToSfml(int value, sf::priv::JoystickState& state)
    {
	int val = 0;
	switch (value) {
	case HAT_CENTERED:
	    val = 0;
	    break;
	case HAT_UP:
	    val = 1;
	    break;
	case HAT_RIGHT:
	    val = 3;
	    break;
	case HAT_DOWN:
	    val = 5;
	    break;
	case HAT_LEFT:
	    val = 7;
	    break;
	case HAT_RIGHTUP:
	    val = 2;
	    break;
	case HAT_RIGHTDOWN:
	    val = 4;
	    break;
	case HAT_LEFTUP:
	    val = 8;
	    break;
	case HAT_LEFTDOWN:
	    val = 6;
	    break;

	}
        state.axes[sf::Joystick::PovX] = hatValueMap[val].first;
        state.axes[sf::Joystick::PovY] = hatValueMap[val].second;
    }
}


namespace sf
{
namespace priv
{
////////////////////////////////////////////////////////////
void JoystickImpl::initialize()
{
    hid_init(NULL);

    // Do an initial scan
    updatePluggedList();

    // Map of hat values
    hatValueMap[0] = std::make_pair(   0,    0); // center

    hatValueMap[1] = std::make_pair(   0, -100); // top
    hatValueMap[3] = std::make_pair( 100,    0); // right
    hatValueMap[5] = std::make_pair(   0,  100); // bottom
    hatValueMap[7] = std::make_pair(-100,    0); // left

    hatValueMap[2] = std::make_pair( 100, -100); // top-right
    hatValueMap[4] = std::make_pair( 100,  100); // bottom-right
    hatValueMap[6] = std::make_pair(-100,  100); // bottom-left
    hatValueMap[8] = std::make_pair(-100, -100); // top-left
}


////////////////////////////////////////////////////////////
void JoystickImpl::cleanup()
{
}


////////////////////////////////////////////////////////////
bool JoystickImpl::isConnected(unsigned int index)
{
    return plugged.find(index) != plugged.end();
}


////////////////////////////////////////////////////////////
bool JoystickImpl::open(unsigned int index)
{
    if (isConnected(index))
    {
        // Open the joystick's file descriptor (read-only and non-blocking)
        m_file = ::open(plugged[index].c_str(), O_RDONLY | O_NONBLOCK);
        if (m_file >= 0)
        {
            // Reset the joystick state
            m_state = JoystickState();

            // Get the report descriptor
            m_desc = hid_get_report_desc(m_file);
            if (!m_desc)
            {
                ::close(m_file);
                return false;
            }

            // And the id
            ioctl(m_file, USB_GET_REPORT_ID, &m_id);

            // Then allocate a buffer for data retrieval
            m_length = hid_report_size(m_desc, hid_input, m_id);
            m_buffer.resize(m_length);
            char buff[100];
	    snprintf(buff, sizeof(buff), "Game Controller (%i)", index);
	    m_identification.name = std::string(buff);

            m_state.connected = true;
            return true;
        }
    }

    return false;
}


////////////////////////////////////////////////////////////
void JoystickImpl::close()
{
    ::close(m_file);
    hid_dispose_report_desc(m_desc);
}


////////////////////////////////////////////////////////////
JoystickCaps JoystickImpl::getCapabilities() const
{
    JoystickCaps caps;
    hid_item_t item;

    hid_data_t data = hid_start_parse(m_desc, 1 << hid_input, m_id);
    while (hid_get_item(data, &item) > 0)
    {
        if (item.kind == hid_input)
        {
	    switch (HID_PAGE(item.usage)) {
	    case HUP_GENERIC_DESKTOP:
		{
		   int usage = HID_USAGE(item.usage);
                   int axis = usageToAxis(usage);
		
                   if (usage == HUG_HAT_SWITCH || usage == HUG_DPAD_UP)
                     {

                         caps.axes[Joystick::PovX] = true;
                         caps.axes[Joystick::PovY] = true;
                     }
                     else if (axis != -1)
                     {
                         caps.axes[axis] = true;
	             }	
		     break;
		}
	    case HUP_BUTTON:
                caps.buttonCount++;
                break;
	    default:
		break;
	    }

        }
    }

    hid_end_parse(data);

    return caps;
}


////////////////////////////////////////////////////////////
Joystick::Identification JoystickImpl::getIdentification() const
{
    return m_identification;
}


////////////////////////////////////////////////////////////
JoystickState JoystickImpl::JoystickImpl::update()
{

    int32_t dpad[4] = {0, 0, 0, 0};
    while (read(m_file, &m_buffer[0], m_length) == m_length)
    {
        hid_data_t data = hid_start_parse(m_desc, 1 << hid_input, m_id);

        // No memory?
        if (!data)
            continue;

        int buttonIndex = 0;
        hid_item_t item;

        while (hid_get_item(data, &item) > 0)
        {
            if (item.kind == hid_input)
            {
		int page = HID_PAGE(item.usage);
		int bvalue = 0;
		switch (page) {
		case HUP_GENERIC_DESKTOP:
		    {
		    	int usage = HID_USAGE(item.usage);
			int axis = usageToAxis(usage);
			if (axis >= 0) {
			    int value = hid_get_data(&m_buffer[0], &item);
			    int minimum = item.logical_minimum;
			    int maximum = item.logical_maximum;

			    value = (value - minimum) * 200 / (maximum - minimum) - 100;
			    m_state.axes[axis] = value;
			} else if (usage == HUG_HAT_SWITCH) {
			    hatValueToSfml(usage, m_state);
			} else if (usage == HUG_DPAD_UP) {
                            dpad[0] = (int32_t) hid_get_data(&m_buffer[0], &item);
                            hatValueToSfml(dpad_to_sfml(dpad), m_state);
                        }
                        else if (usage == HUG_DPAD_DOWN) {
                            dpad[1] = (int32_t) hid_get_data(&m_buffer[0], &item);
                            hatValueToSfml(dpad_to_sfml(dpad), m_state);
                        }
                        else if (usage == HUG_DPAD_RIGHT) {
                            dpad[2] = (int32_t) hid_get_data(&m_buffer[0], &item);
                            hatValueToSfml(dpad_to_sfml(dpad), m_state);
                        }
                        else if (usage == HUG_DPAD_LEFT) {
                            dpad[3] = (int32_t) hid_get_data(&m_buffer[0], &item);
                            hatValueToSfml(dpad_to_sfml(dpad), m_state);
			}
			break;
		    }
		case HUP_BUTTON:
	            bvalue = hid_get_data(&m_buffer[0], &item);	
		    m_state.buttons[buttonIndex] = bvalue;
		    buttonIndex++;
		    break;
		default:
		    continue;
		}
	    }
	}

        hid_end_parse(data);
    }
    return m_state;
}

} // namespace priv

} // namespace sf
