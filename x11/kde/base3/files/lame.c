#include <lame/lame.h>

lame_global_flags *
lame_init()
{
	return NULL;
}

void
id3tag_init(lame_global_flags *f)
{
}

void 
id3tag_set_album(lame_global_flags *f, const char *s)
{
}

void
id3tag_set_artist(lame_global_flags *f, const char *s)
{
}

void
id3tag_set_title(lame_global_flags *f, const char *s)
{
}

int
lame_init_params(lame_global_flags *f)
{
	return -1;
}

int
lame_encode_buffer_interleaved(lame_global_flags *f, short int pcm[],
	int num_samples, unsigned char *mp3buf, int bufsize)
{
	return -1;
}

int
lame_encode_finish(lame_global_flags *f, unsigned char *mp3buf, int sz)
{
	return -1;
}

int
lame_set_VBR(lame_global_flags *f, vbr_mode m)
{
	return 0;
}

int
lame_set_brate(lame_global_flags *f, int z)
{
	return 0;
}

int
lame_get_brate(const lame_global_flags *f)
{
	return 0;
}

int
lame_set_quality(lame_global_flags *f, int z)
{
	return 0;
}

int 
lame_set_VBR_mean_bitrate_kbps(lame_global_flags *f, int z)
{
	return 0;
}

int
lame_get_VBR_mean_bitrate_kbps(const lame_global_flags *f)
{
	return 0;
}

vbr_mode
lame_get_VBR(const lame_global_flags *f)
{
	return 0;
}

int
lame_set_VBR_min_bitrate_kbps(lame_global_flags *f, int z)
{
	return 0;
}

int
lame_set_VBR_hard_min(lame_global_flags *f, int z)
{
	return 0;
}

int
lame_set_VBR_max_bitrate_kbps(lame_global_flags *f, int z)
{
	return 0;
}

int
lame_set_VBR_q(lame_global_flags *f, int z)
{
	return 0;
}

int
lame_set_mode(lame_global_flags *f, MPEG_mode m)
{
	return 0;
}

int
lame_set_copyright(lame_global_flags *f, int c)
{
	return 0;
}

int
lame_set_original(lame_global_flags *f, int c)
{
	return 0;
}

int
lame_set_strict_ISO(lame_global_flags *f, int s)
{
	return 0;
}

int
lame_set_error_protection(lame_global_flags *f, int s)
{
	return 0;
}

int
lame_set_lowpassfreq(lame_global_flags *f, int s)
{
	return 0;
}

int
lame_set_lowpasswidth(lame_global_flags *f, int s)
{
	return 0;
}

int
lame_set_highpassfreq(lame_global_flags *f, int s)
{
	return 0;
}

int
lame_set_highpasswidth(lame_global_flags *f, int s)
{
	return 0;
}

int
lame_set_bWriteVbrTag(lame_global_flags *f, int s)
{
	return 0;
}

