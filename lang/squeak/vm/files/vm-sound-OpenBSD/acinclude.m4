# -*- sh -*-

AC_MSG_CHECKING([for Open Sound System])
AC_TRY_COMPILE([#include <sys/ioctl.h>
#include <sys/audioio.h>],[AUDIO_GETOOFFS;],[
  AC_MSG_RESULT(yes)
],[
  AC_MSG_RESULT(no)
  AC_PLUGIN_DISABLE
])
