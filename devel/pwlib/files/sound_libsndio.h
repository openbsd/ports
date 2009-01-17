
#include <ptlib.h>
#include <ptlib/sound.h>
#include <ptlib/socket.h>

#include <sndio.h>

class PSoundChannelLIBSNDIO: public PSoundChannel
{
 public:
    PSoundChannelLIBSNDIO();
    void Construct();
    PSoundChannelLIBSNDIO(const PString &device,
                     PSoundChannel::Directions dir,
                     unsigned numChannels,
                     unsigned sampleRate,
		     unsigned bitsPerSample);
    ~PSoundChannelLIBSNDIO();
    static PStringArray GetDeviceNames(PSoundChannel::Directions = Player);
    static PString GetDefaultDevice(PSoundChannel::Directions);
    BOOL Open(const PString & _device,
              Directions _dir,
              unsigned _numChannels,
              unsigned _sampleRate,
              unsigned _bitsPerSample);
    BOOL Setup();
    BOOL Close();
    BOOL IsOpen() const;
    BOOL Write(const void * buf, PINDEX len);
    BOOL Read(void * buf, PINDEX len);
    BOOL SetFormat(unsigned numChannels,
                   unsigned sampleRate,
                   unsigned bitsPerSample);
    unsigned GetChannels() const;
    unsigned GetSampleRate() const;
    unsigned GetSampleSize() const;
    BOOL SetBuffers(PINDEX size, PINDEX count);
    BOOL GetBuffers(PINDEX & size, PINDEX & count);
    BOOL PlaySound(const PSound & sound, BOOL wait);
    BOOL PlayFile(const PFilePath & filename, BOOL wait);
    BOOL HasPlayCompleted();
    BOOL WaitForPlayCompletion();
    BOOL RecordSound(PSound & sound);
    BOOL RecordFile(const PFilePath & filename);
    BOOL StartRecording();
    BOOL IsRecordBufferFull();
    BOOL AreAllRecordBuffersFull();
    BOOL WaitForRecordBufferFull();
    BOOL WaitForAllRecordBuffersFull();
    BOOL Abort();
    BOOL SetVolume(unsigned newVal);
    BOOL GetVolume(unsigned &devVol);

  protected:
    struct sio_hdl *hdl;
    struct sio_par par;
    unsigned mNumChannels;
    unsigned mSampleRate;
    unsigned mBitsPerSample;
    unsigned mFragCount;
    unsigned mFragSize;
    unsigned mBytesPerFrame;
    Directions mDirection;
    PString mDevice;
    BOOL isInitialised;
};
