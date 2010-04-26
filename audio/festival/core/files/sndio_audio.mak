
INCLUDE_SNDIO_AUDIO=1

MOD_DESC_SNDIO_AUDIO=(from EST) Audio module for sndio audio support

AUDIO_DEFINES += -DSUPPORT_SNDIO

MODULE_LIBS += -lsndio
