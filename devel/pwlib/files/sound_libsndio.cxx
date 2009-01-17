/*
 * sound_libsndio.cxx
 *
 * Sound driver implementation.
 *
 * Portable Windows Library
 *
 * Copyright (c) 1993-1998 Equivalence Pty. Ltd.
 *
 * The contents of this file are subject to the Mozilla Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
 * the License for the specific language governing rights and limitations
 * under the License.
 *
 * The Original Code is Portable Windows Library.
 *
 * The Initial Developer of the Original Code is Equivalence Pty. Ltd.
 *
 * Portions are Copyright (C) 1993 Free Software Foundation, Inc.
 * All Rights Reserved.
 *
 * $Log: sound_libsndio.cxx,v $
 * Revision 1.1  2009/01/17 12:30:08  jakemsr
 * - add sndio backend
 * - remove OSS and esd support
 * ok ajacoutot@ (MAINTAINER)
 *
 */

#pragma implementation "sound_libsndio.h"

#include "sound_libsndio.h"

#include <sys/poll.h>

PCREATE_SOUND_PLUGIN(LIBSNDIO, PSoundChannelLIBSNDIO);

PSoundChannelLIBSNDIO::PSoundChannelLIBSNDIO()
{
  PSoundChannelLIBSNDIO::Construct();
}


PSoundChannelLIBSNDIO::PSoundChannelLIBSNDIO(const PString & device,
                                        Directions dir,
                                          unsigned numChannels,
                                          unsigned sampleRate,
                                          unsigned bitsPerSample)
{
  Construct();
  Open(device, dir, numChannels, sampleRate, bitsPerSample);
}


void PSoundChannelLIBSNDIO::Construct()
{
  os_handle = -1;
  hdl = NULL;
}


PSoundChannelLIBSNDIO::~PSoundChannelLIBSNDIO()
{
  Close();
}


PStringArray PSoundChannelLIBSNDIO::GetDeviceNames(Directions)
{
  static const char * const devices[] = {
    "default",
    "/tmp/aucat.sock",
    "/dev/audio0",
    "/dev/audio1",
    "/dev/audio2"
  };

  return PStringArray(PARRAYSIZE(devices), devices);
}


PString PSoundChannelLIBSNDIO::GetDefaultDevice(Directions dir)
{
  return "default";
}

BOOL PSoundChannelLIBSNDIO::Open(const PString & device,
                              Directions dir,
                                unsigned numChannels,
                                unsigned sampleRate,
                                unsigned bitsPerSample)
{
  uint mode;
  char sio_device[32];

  Close();

  if (dir == Recorder)
    mode = SIO_REC;
  else
    mode = SIO_PLAY;

  snprintf(sio_device, 32, "%s", (const char *)device);

  if (strncmp(sio_device, "default", 7) == 0)
    hdl = sio_open(NULL, mode, 0);
  else
    hdl = sio_open(sio_device, mode, 0);

  if (hdl == NULL) {
    printf("sio_open failed\n");
    return FALSE;
  }

  mDirection     = dir;
  mDevice        = device;
  mSampleRate    = sampleRate;
  mNumChannels   = numChannels;
  mBitsPerSample = bitsPerSample;
  mBytesPerFrame = (bitsPerSample / 8) * numChannels;

  isInitialised = FALSE;

  return TRUE;
}

BOOL PSoundChannelLIBSNDIO::Setup()
{
  if (!hdl) {
    PTRACE(6, "LIBSNDIO\tSkipping setup of " << mDevice << " as not open");
    return FALSE;
  }

  if (isInitialised) {
    PTRACE(6, "LIBSNDIO\tSkipping setup of " << mDevice << " as instance already initialised");
    return TRUE;
  }

  PTRACE(6, "LIBSNDIO\tInitialising " << mDevice);

  sio_initpar(&par);

  int framesPerFrag = mFragSize / mBytesPerFrame;
  par.bufsz = mFragCount * framesPerFrag;
  par.round = framesPerFrag;

  par.bits = mBitsPerSample;
  par.sig = 1;
#if PBYTE_ORDER == PLITTLE_ENDIAN
  par.le = 1;
#else
  par.le = 0;
#endif

  if (mDirection == Recorder)
    par.rchan = mNumChannels;
  else
    par.pchan = mNumChannels;

  par.rate = mSampleRate;

  if (!sio_setpar(hdl, &par)) {
    printf("sio_setpar failed\n");
    return FALSE;
  }

  if (!sio_getpar(hdl, &par)) {
    printf("sio_getpar failed\n");
    return FALSE;
  }

  mFragSize = par.round * mBytesPerFrame;
  mFragCount = par.bufsz / par.round;

  if (!sio_start(hdl)) {
    printf("sio_start failed\n");
    return FALSE;
  }

  isInitialised = TRUE;

  return TRUE;
}

BOOL PSoundChannelLIBSNDIO::Close()
{
  if (!hdl)
    return TRUE;

  sio_close(hdl);
  hdl = NULL;
  return PChannel::Close();
}

BOOL PSoundChannelLIBSNDIO::IsOpen() const
{
  return (hdl != NULL);
}

BOOL PSoundChannelLIBSNDIO::Write(const void * buf, PINDEX len)
{
  lastWriteCount = 0;

  if (!Setup() || !hdl)
    return FALSE;

  int did, tot = 0;

  while (len > 0) {
    did = sio_write(hdl, (void *)buf, len);
    if (did == 0) {
      printf("sio_write failed\n");
      return FALSE;
    }
    len -= did;
    (char *)buf += did;
    tot += did;
  }
  lastWriteCount += tot;

  return TRUE;
}

BOOL PSoundChannelLIBSNDIO::Read(void * buf, PINDEX len)
{
  lastReadCount = 0;

  if (!Setup() || !hdl)
    return FALSE;

  int did, tot = 0;

  while (len > 0) {
    did = sio_read(hdl, buf, len);
    if (did == 0) {
      printf("sio_read failed\n");
      return FALSE;
    }
    len -= did;
    (char *)buf += did;
    tot += did;
  }
  lastReadCount += tot;

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::SetFormat(unsigned numChannels,
                              unsigned sampleRate,
                              unsigned bitsPerSample)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  PAssert((bitsPerSample == 8) || (bitsPerSample == 16), PInvalidParameter);
  PAssert(numChannels >= 1 && numChannels <= 2, PInvalidParameter);

  if (isInitialised) {
    if ((numChannels   != mNumChannels) ||
        (sampleRate    != mSampleRate) ||
        (bitsPerSample != mBitsPerSample)) {
      PTRACE(6, "LIBSNDIO\tTried to change read/write format without stopping");
      return FALSE;
    }
    return TRUE;
  }

  mNumChannels   = numChannels;
  mSampleRate    = sampleRate;
  mBitsPerSample = bitsPerSample;
  isInitialised  = FALSE;

  return TRUE;
}


unsigned PSoundChannelLIBSNDIO::GetChannels()   const
{
  return mNumChannels;
}


unsigned PSoundChannelLIBSNDIO::GetSampleRate() const
{
  return mSampleRate;
}


unsigned PSoundChannelLIBSNDIO::GetSampleSize() const
{
  return mBitsPerSample;
}


BOOL PSoundChannelLIBSNDIO::SetBuffers(PINDEX size, PINDEX count)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  PAssert(size > 0 && count > 0 && count < 65536, PInvalidParameter);

  if (isInitialised) {
    if (mFragSize != (unsigned)size || mFragCount != (unsigned)count) {
      PTRACE(6, "LIBSNDIO\tTried to change buffers without stopping");
      return FALSE;
    }
    return TRUE;
  }

  mFragSize = size;
  mFragCount = count;
  isInitialised = FALSE;

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::GetBuffers(PINDEX & size, PINDEX & count)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  count = mFragCount;
  size = mFragSize;

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::PlaySound(const PSound & sound, BOOL wait)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  if (!Write((const BYTE *)sound, sound.GetSize()))
    return FALSE;

  if (wait)
    return WaitForPlayCompletion();

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::PlayFile(const PFilePath & filename, BOOL wait)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  PFile file(filename, PFile::ReadOnly);
  if (!file.IsOpen())
    return FALSE;

  for (;;) {
    BYTE buffer[256];
    if (!file.Read(buffer, 256))
      break;
    PINDEX len = file.GetLastReadCount();
    if (len == 0)
      break;
    if (!Write(buffer, len))
      break;
  }

  file.Close();

  if (wait)
    return WaitForPlayCompletion();

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::HasPlayCompleted()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::WaitForPlayCompletion()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::RecordSound(PSound & sound)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return FALSE;
}


BOOL PSoundChannelLIBSNDIO::RecordFile(const PFilePath & filename)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return FALSE;
}


BOOL PSoundChannelLIBSNDIO::StartRecording()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::IsRecordBufferFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 0));
}


BOOL PSoundChannelLIBSNDIO::AreAllRecordBuffersFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 0));
}


BOOL PSoundChannelLIBSNDIO::WaitForRecordBufferFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  // return PXSetIOBlock(PXReadBlock, readTimeout);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 1000));
}


BOOL PSoundChannelLIBSNDIO::WaitForAllRecordBuffersFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 1000));
}


BOOL PSoundChannelLIBSNDIO::Abort()
{
  return TRUE;
}


BOOL PSoundChannelLIBSNDIO::SetVolume(unsigned newVal)
{
  if (!hdl)
    return FALSE;

  return FALSE;
}


BOOL  PSoundChannelLIBSNDIO::GetVolume(unsigned &devVol)
{
  if (!hdl)
    return FALSE;

  devVol = 0;
  return FALSE;
}
  


// End of file
