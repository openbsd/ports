#include <config.h>

/*****************************************************************/
/***                                                           ***/
/***    Play out a file on OpenBSD                             ***/
/***	(conf/linuxplay.c with changes)                        ***/
/***                                                           ***/
/*****************************************************************/

#include <useconfig.h>
#include <stdio.h>
#include <math.h>
#include <ctype.h>

#include <sys/file.h>
#include <sys/stat.h>
#include <sys/param.h>
#include <sys/signal.h>

#include <sndio.h>

#include "proto.h"
#include "getargs.h"
#include "hplay.h"

#define SAMP_RATE 8000
long samp_rate = SAMP_RATE;

/* Audio Parameters */

static struct sio_hdl *hdl;
static struct sio_par par;

static int linear_fd = -1;

static char *linear_file = NULL;

char *prog = "hplay";

static int
audio_open(void)
{
 hdl = sio_open(NULL, SIO_PLAY, 0);
 if (hdl == NULL)
  {
   fprintf(stderr, "sio_open failed\n");
   return 0;
  }
 return 1;
}

int
audio_init(int argc, char *argv[])
{
 int rate_set = 0;
 int use_audio = 1;

 prog = argv[0];

 argc = getargs("OpenBSD Audio",argc, argv,
                "r", "%d", &rate_set,    "Sample rate",
                "a", NULL, &use_audio,   "Audio enable",
                NULL);

 if (help_only)
  return argc;

 if (rate_set)
  samp_rate = rate_set;

 if (!use_audio)
  return argc;

 audio_open();

 sio_initpar(&par);
 par.bits = 16;
 par.sig = 1;
 par.rate = samp_rate;
 par.pchan = 1;

 if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par))
  {
   fprintf(stderr, "error setting sndio parameters\n");
   hdl = NULL;
  }
 else
  {
   if (par.bits != 16 || par.sig != 1 || par.pchan != 1 || par.rate != samp_rate)
   {
    fprintf(stderr, "returned incorrect sndio parameters\n");
    hdl = NULL;
   }
  }

 if (hdl && !sio_start(hdl))
  {
   fprintf(stderr, "error starting sndio\n");
   hdl = NULL;
  }

 return argc;
}

void
audio_term()
{

 /* Close audio system  */
 if (hdl)
  {
   sio_close(hdl);
   hdl = NULL;
  }

 /* Finish linear file */
 if (linear_fd >= 0)
  {
   ftruncate(linear_fd, lseek(linear_fd, 0L, SEEK_CUR));
   close(linear_fd);
   linear_fd = -1;
  }
}

void
audio_play(int n, short *data)
{
 if (n > 0)
  {
   unsigned size = n * sizeof(short);

   if (linear_fd >= 0)
    {
     if (write(linear_fd, data, size) != size)
      perror("write");
    }

   if (hdl)
    {
     if (sio_write(hdl, data, size) != size)
      fprintf(stderr, "sio_write: short write");
    }

  }
}
