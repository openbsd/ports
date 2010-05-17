/* openbsd/audio.c 
	vi:ts=3 sw=3:
 */
/* Native BSD interface */

#include "defs.h"
#include <unistd.h>
#include <fcntl.h>
#include "extern.h"
#include "prefs.h"
#include "autoinit.h"
#include "watched_var.h"
#include <sys/ioctl.h>
struct options_set *port_options=0;

#define DEFAULT_BUFFERS
#define UNSIGNED8
#define DEFAULT_SET_MIX
#define NEW_OUTPUT_SAMPLES_AWARE
#define NEW_FUNCS

/* fine-tune to get the scrolling display in sync with the music */
#define ADVANCE_TAGS 20000

#include "Arch/common.c"

#include <sys/types.h>
#include <sys/audioio.h>




ID("$Id: audio.c,v 1.4 2010/05/17 18:10:05 espie Exp $")

LOCAL unsigned long samples_max;
LOCAL int audio;           	
LOCAL unsigned long current_freq;

unsigned long total;

LOCAL int dsp_samplesize = 0;

unsigned long open_audio(unsigned long f, int s)
   {
	int buf_max;
	unsigned long possible, current;

   audio = open("/dev/audio", O_WRONLY, 0);
   if (audio == -1)
		end_all("Error opening audio device");

		/* iterate and find true native formats */
		{
		struct audio_encoding query;
		for (query.index = 0; 
			ioctl(audio, AUDIO_GETENC, &query) != -1;
			query.index++)
			{
			if (query.flags & AUDIO_ENCODINGFLAG_EMULATED)
				continue;
			if (query.precision == 16 && 
				(query.encoding == AUDIO_ENCODING_SLINEAR_BE ||
				query.encoding == AUDIO_ENCODING_SLINEAR_LE))
				dsp_samplesize = 16;
			if (!dsp_samplesize && query.precision == 8 &&
				query.encoding == AUDIO_ENCODING_ULINEAR)
				dsp_samplesize = 8;
			}
		}
	if (dsp_samplesize == 0)
		end_all("Sorry, no audio format supported by this binary is available");

	if (!f)
		f = 22050;

		{
		struct audio_info current;
		AUDIO_INITINFO(&current);

		switch(dsp_samplesize)
			{
		case 8:
			dsize = 1;
			current.play.encoding = AUDIO_ENCODING_ULINEAR; 
			current.play.precision= 8;
			break;
		case 16:
			dsize = 2;
			current.play.encoding = AUDIO_ENCODING_SLINEAR;
			current.play.precision= 16;
			break;
		default:
			end_all("Error: unknown dsp_samplesize");
			}
		current.play.sample_rate = f; 
		current.play.channels = s ? 2 : 1;

		{
		int ok = ioctl(audio, AUDIO_SETINFO, &current);
			/* maybe we are trying some stunt our card can't do ?
			 * Try lowering our expectations 
			 */
		if (ok == -1 && current.play.channels == 2 && current.play.sample_rate > 22050)
			{
			current.play.sample_rate = 22050;
			ok = ioctl(audio, AUDIO_SETINFO, &current);
			}
		if (ok == -1 && current.play.channels == 2)
			{
			current.play.channels = 1;
			ok = ioctl(audio, AUDIO_SETINFO, &current);
			}
		while (ok == -1 && current.play.sample_rate > 8000)
			{
			current.play.sample_rate /= 2;
			ok = ioctl(audio, AUDIO_SETINFO, &current);
			}
		if (ok == -1)
			end_all("Can't find a suitable format");

		if (ioctl(audio, AUDIO_GETINFO, &current) == -1)
			end_all("Error retrieving format");
		}

		buf_max = current.blocksize;
		current_freq = current.play.sample_rate;
		stereo = current.play.channels == 2 ? 1 : 0;
		}

   buffer = malloc(buf_max);
   buffer16 = (short *)buffer;
   idx = 0;
	samples_max = buf_max / dsize;
	set_watched_scalar(FREQUENCY, current_freq);
	total = 0;
	return current_freq;
   }

/* synchronize stuff with audio output */
LOCAL struct tagged
	{
	struct tagged *next;			/* simply linked list */
	void (*f)(GENERIC p);	/* function to call */
	void (*f2)(GENERIC p);	/* function to call  for flush */
	GENERIC p;						/* and parameter */
	unsigned long when;						/* number of bytes to let go before 
		calling */
	} 
	*start,	/* what still to output */
	*end;	/* where to add new tags */



/* flush_tags: use tags that have gone by recently */
LOCAL void flush_tags(void)
	{
	audio_offset_t off;
	if (audio != -1)
		ioctl(audio, AUDIO_GETOOFFS, &off);
	if (start)
		{
		while (start && start->when <= off.samples + ADVANCE_TAGS)
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

	if (audio != -1)
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
		write(audio, buffer, dsize * idx);
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
    close(audio);
    free(buffer);
    }

unsigned long update_frequency(void)
	{
	return 0;
	}

void discard_buffer(void)
	{
	if (audio)
		ioctl(audio, AUDIO_FLUSH, 0);
	remove_pending_tags();
	total = 0;
	}

void audio_ui(char c)
	{
	}

