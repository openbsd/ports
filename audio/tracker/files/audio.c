/* openbsd/audio.c 
	vi:ts=3 sw=3:
 */
/* sndio(7) interface */

#include "defs.h"
#include <unistd.h>
#include "extern.h"
#include "prefs.h"
#include "autoinit.h"
#include "watched_var.h"
struct options_set *port_options=0;

#define DEFAULT_BUFFERS
#define UNSIGNED8
#define DEFAULT_SET_MIX
#define NEW_OUTPUT_SAMPLES_AWARE
#define NEW_FUNCS

/* fine-tune to get the scrolling display in sync with the music */
#define ADVANCE_TAGS 20000 

#include "Arch/common.c"

#include <sndio.h>

LOCAL unsigned long samples_max;
LOCAL long long realpos;
LOCAL struct sio_hdl *hdl;           	
LOCAL unsigned long current_freq;

unsigned long total;

LOCAL int dsp_samplesize = 0;

static void
movecb(void *arg, int delta)
{
	realpos += delta * dsize * (stereo ? 2 : 1);
}

unsigned long open_audio(unsigned long f, int s)
   {
	struct sio_par par;
	int buf_max;

	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL)
		end_all("Error opening audio device");

	realpos = 0;
	sio_onmove(hdl, movecb, NULL);

	sio_initpar(&par);
	if (f)
		par.rate = f;
	par.pchan = 2;
	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par) || !sio_start(hdl) ||
	    (par.bits != 8 && par.bits != 16) || par.pchan > 2)
		end_all("Sorry, no audio format supported by this binary is available");

	buf_max = par.appbufsz * par.bps * par.pchan;
	current_freq = par.rate;
	stereo = par.pchan == 2 ? 1 : 0;

	dsp_samplesize = par.bits;
	dsize = par.bps;
	buffer = malloc(buf_max);
	buffer16 = (short *)buffer;

	idx = 0;
	samples_max = buf_max / dsize / par.pchan;
	set_watched_scalar(FREQUENCY, current_freq);
	total = 0;
	return current_freq;
   }

/* synchronize stuff with audio output */
LOCAL struct tagged
	{
	struct tagged *next;	/* simply linked list */
	void (*f)(GENERIC p);	/* function to call */
	void (*f2)(GENERIC p);	/* function to call  for flush */
	GENERIC p;		/* and parameter */
	unsigned long when;	/* number of bytes to let go before calling */
	} 
	*start,	/* what still to output */
	*end;	/* where to add new tags */



/* flush_tags: use tags that have gone by recently */
LOCAL void flush_tags(void)
	{
	if (start)
		{
		while (start && start->when <= realpos + ADVANCE_TAGS)
			{
			struct tagged *tofree;

			(*start->f)(start->p);
			tofree = start;
			start = start->next;
			free(tofree);
			}
		}
	}

/* remove unused tags at end */
LOCAL void remove_pending_tags(void)
	{
	while (start)
		{
		struct tagged *tofree;

		(*start->f2)(start->p);
		tofree = start;
		start = start->next;
		free(tofree);
		}
	}

void sync_audio(void (*function)(void *p), void (*f2)(void *p), void *parameter)
	{
	struct tagged *t;

	if (hdl)
		{
		t = malloc(sizeof(struct tagged));
		if (!t)
			{
			(*function)(parameter);
			return;
			}
			/* build new tag */
		t->next = 0;
		t->f = function;
		t->f2 = f2;
		t->p = parameter;
		t->when = total;

			/* add it to list */
		if (start) 
			end->next = t;
		else
			start = t;
		end = t;

			/* set up for next tag */
		}
	else
		(*function)(parameter);
	}

LOCAL void actually_flush_buffer(void)
   {
   int l,i;

	if (idx)
		{
		total += idx * dsize;
		sio_write(hdl, buffer, dsize * idx);
		}
   idx = 0;
   }

void output_samples(long left, long right, int n)
	{
	if (idx >= samples_max - 1)
		actually_flush_buffer();
	switch(dsp_samplesize)
		{
	case 16:				/*   Cool! 16 bits samples */
		add_samples16(left, right, n);
		break;
	case 8:
		add_samples8(left, right, n);
		break;
	default:	/* should not happen */
		;
	   }
   }

void flush_buffer(void)
    {	
	 actually_flush_buffer();
	 flush_tags();
    }

/*
 * Closing the Linux sound device waits for all pending samples to play.
 */
void close_audio(void)
    {
    actually_flush_buffer();
    sio_close(hdl);
    free(buffer);
    }

unsigned long update_frequency(void)
	{
	return 0;
	}

void discard_buffer(void)
	{
	remove_pending_tags();
	total = 0;
	}

void audio_ui(char c)
	{
	}

