// --------------------------------------------------------------------------
// ``sndio'' specific audio driver interface.
// --------------------------------------------------------------------------

#ifndef AUDIODRV_H
#define AUDIODRV_H


#include <sndio.h>
#include <stdio.h>
#include <sidplay/emucfg.h>

class audioDriver
{
	
 public:  // --------------------------------------------------------- public

    audioDriver();
  
	bool IsThere();
	
	bool Open(udword freq, int precision, int channels,
			  int fragments, int fragBase);
	
	void Close();
	
	void Play(ubyte* buffer, int bufferSize);
	
	bool Reset();
	
	int GetAudioHandle()
	{
		return -1;
	}
	
	udword GetFrequency()
	{ 
		return frequency;
	}
	
	int GetChannels()
	{
		return channels;
	}
	
	int GetSamplePrecision()
	{
		return precision;
	}
	
	int GetSampleEncoding()
	{
		return encoding;
	}
	
	int GetBlockSize()
	{
		return blockSize;
	}
	
	int GetFragments()
	{
		return 1;
	}
	
	int GetFragSizeBase()
	{
		return 0;
	}
	
	const char* GetErrorString()
	{
		return errorString;
	}
			
 private:  // ------------------------------------------------------- private
	struct sio_hdl *hdl;

	const char* errorString;
	int blockSize;

	udword frequency;

	// These are constants/enums from ``libsidplay/include/emucfg.h''.
	int encoding;
	int precision;
	int channels;
};


#endif  // AUDIODRV_H
