/* pmsndio.c -- PortMidi os-dependent code */

#include <stdlib.h>
#include <stdio.h>
#include <sndio.h>
#include "portmidi.h"
#include "pmutil.h"
#include "pminternal.h"


PmDeviceID pm_default_input_device_id = -1;
PmDeviceID pm_default_output_device_id = -1;

extern pm_fns_node pm_sndio_in_dictionary;
extern pm_fns_node pm_sndio_out_dictionary;

void pm_init()
{
    // Add output devices
    pm_add_device("SNDIO",
      "default",
      FALSE,
      (void *)0,
      &pm_sndio_out_dictionary);
    pm_add_device("SNDIO",
      "midi/0",
      FALSE,
      (void *)1,
      &pm_sndio_out_dictionary);

    // this is set when we return to Pm_Initialize, but we need it
    // now in order to (successfully) call Pm_CountDevices()
    pm_initialized = TRUE;
    pm_default_output_device_id = 0;
}

void pm_term(void)
{
}

PmDeviceID Pm_GetDefaultInputDeviceID() {
    Pm_Initialize();
    return pm_default_input_device_id; 
}

PmDeviceID Pm_GetDefaultOutputDeviceID() {
    Pm_Initialize();
    return pm_default_output_device_id;
}

void *pm_alloc(size_t s) { return malloc(s); }

void pm_free(void *ptr) { free(ptr); }

/* midi_message_length -- how many bytes in a message? */
static int midi_message_length(PmMessage message)
{
    message &= 0xff;
    if (message < 0x80) {
        return 0;
    } else if (message < 0xf0) {
        static const int length[] = {3, 3, 3, 3, 2, 2, 3};
        return length[(message - 0x80) >> 4];
    } else {
        static const int length[] = {
            -1, 2, 3, 2, 0, 0, 1, -1, 1, 0, 1, 1, 1, 0, 1, 1};
        return length[message - 0xf0];
    }
}

static PmError sndio_out_open(PmInternal *midi, void *driverInfo)
{
    const char *device = descriptors[midi->device_id].pub.name;
    struct mio_hdl *mio;

    mio = mio_open(device, MIO_OUT, 0);
    if (!mio) {
        fprintf(stderr, "mio_open failed\n");
        return pmHostError;
    }
    midi->descriptor = mio;

    return pmNoError;
}
static PmError sndio_out_close(PmInternal *midi)
{
    mio_close(midi->descriptor);
    return pmNoError;
}
static PmError sndio_abort(PmInternal *midi)
{
    mio_close(midi->descriptor);
    return pmNoError;
}
static PmTimestamp sndio_synchronize(PmInternal *midi)
{
    return 0;
}
static PmError sndio_write_byte(PmInternal *midi, unsigned char byte,
                        PmTimestamp timestamp)
{
    size_t w = mio_write(midi->descriptor, &byte, 1);
    if (w != 1) {
        fprintf(stderr, "mio_write failed\n");
        return pmHostError;
    }
    return pmNoError;
}
static PmError sndio_write_short(PmInternal *midi, PmEvent *event)
{
    int bytes = midi_message_length(event->message);
    PmMessage msg = event->message;
    int i;
    for (i = 0; i < bytes; i++) {
        unsigned char byte = msg;
        sndio_write_byte(midi, byte, event->timestamp);
        msg >>= 8;
    }

    return pmNoError;
}
static PmError sndio_write_flush(PmInternal *midi, PmTimestamp timestamp)
{
    return pmNoError;
}
PmError sndio_sysex(PmInternal *midi, PmTimestamp timestamp)
{
    return pmNoError;
}
static unsigned int sndio_has_host_error(PmInternal *midi)
{
    return 0;
}
static void sndio_get_host_error(PmInternal *midi, char *msg, unsigned int len)
{
}

/*
pm_fns_node pm_sndio_in_dictionary = {
    none_write_short,
    none_sysex,
    none_sysex,
    none_write_byte,
    none_write_short,
    none_write_flush,
    sndio_synchronize,
    sndio_in_open,
    sndio_abort,
    sndio_in_close,
    sndio_poll,
    sndio_has_host_error,
    sndio_get_host_error
};
*/

pm_fns_node pm_sndio_out_dictionary = {
    sndio_write_short,
    sndio_sysex,
    sndio_sysex,
    sndio_write_byte,
    sndio_write_short,
    sndio_write_flush,
    sndio_synchronize,
    sndio_out_open,
    sndio_abort,
    sndio_out_close,
    none_poll,
    sndio_has_host_error,
    sndio_get_host_error
};

