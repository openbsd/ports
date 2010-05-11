/*
 * sound_sndio.cxx
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
 * $Log: sound_sndio.cxx,v $
 * Revision 1.2  2010/05/11 07:23:23  espie
 * make it compile on gcc4, by making the relevant patch dependent on
 * compiler version.
 * also removes lvalue cast, that's not ansi.
 *
 * Revision 1.1.1.1  2010/03/23 21:10:17  ajacoutot
 * Import ptlib-2.6.5
 *
 * PTLib is a moderately large C++ class library that originated many years
 * ago as a method to produce applications that run on both Microsoft
 * Windows and Unix X-Windows systems. It also was to have a Macintosh port
 * as well, but this never eventuated. In those days it was called the
 * PWLib the Portable Windows Library.
 *
 * Since then, the availability of multi-platform GUI toolkits such as KDE
 * and wxWindows, and the development of the OpenH323 and OPAL projects as
 * primary user of the library, has emphasised the focus on networking, I/O
 * portability, multi-threading and protocol portability. Mostly, the
 * library is used to create high performance and highly portable
 * network-centric applications. So all the GUI abstractions ahave been
 * dropped and it was renamed the Portable Tools Library that you see
 * today.
 *
 * Revision 1.3  2009/06/01 22:19:23  ajacoutot
 * - aucat.sock is no more
 *
 * spotted by robert@ on ekiga
 *
 * Revision 1.2  2009/01/19 09:42:21  ajacoutot
 * - s/SNDIO/SNDIO for consistency
 * discussed with naddy@
 *
 * "sure" jakemsr@
 *
 * Revision 1.1  2009/01/17 12:30:08  jakemsr
 * - add sndio backend
 * - remove OSS and esd support
 * ok ajacoutot@ (MAINTAINER)
 *
 */

#pragma implementation "sound_sndio.h"

#include "sound_sndio.h"

#include <sys/poll.h>

PCREATE_SOUND_PLUGIN(SNDIO, PSoundChannelSNDIO);

PSoundChannelSNDIO::PSoundChannelSNDIO()
{
  PSoundChannelSNDIO::Construct();
}


PSoundChannelSNDIO::PSoundChannelSNDIO(const PString & device,
                                        Directions dir,
                                          unsigned numChannels,
                                          unsigned sampleRate,
                                          unsigned bitsPerSample)
{
  Construct();
  Open(device, dir, numChannels, sampleRate, bitsPerSample);
}


void PSoundChannelSNDIO::Construct()
{
  os_handle = -1;
  hdl = NULL;
}


PSoundChannelSNDIO::~PSoundChannelSNDIO()
{
  Close();
}


PStringArray PSoundChannelSNDIO::GetDeviceNames(Directions)
{
  static const char * const devices[] = {
    "default",
    "/dev/audio0",
    "/dev/audio1",
    "/dev/audio2"
  };

  return PStringArray(PARRAYSIZE(devices), devices);
}


PString PSoundChannelSNDIO::GetDefaultDevice(Directions dir)
{
  return "default";
}

PBoolean PSoundChannelSNDIO::Open(const PString & device,
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

PBoolean PSoundChannelSNDIO::Setup()
{
  if (!hdl) {
    PTRACE(6, "SNDIO\tSkipping setup of " << mDevice << " as not open");
    return FALSE;
  }

  if (isInitialised) {
    PTRACE(6, "SNDIO\tSkipping setup of " << mDevice << " as instance already initialised");
    return TRUE;
  }

  PTRACE(6, "SNDIO\tInitialising " << mDevice);

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

PBoolean PSoundChannelSNDIO::Close()
{
  if (!hdl)
    return TRUE;

  sio_close(hdl);
  hdl = NULL;
  return PChannel::Close();
}

PBoolean PSoundChannelSNDIO::IsOpen() const
{
  return (hdl != NULL);
}

PBoolean PSoundChannelSNDIO::Write(const void * buf, PINDEX len)
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
    buf = (char*)buf + did;
    tot += did;
  }
  lastWriteCount += tot;

  return TRUE;
}

PBoolean PSoundChannelSNDIO::Read(void * buf, PINDEX len)
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
    buf = (char*)buf + did;
    tot += did;
  }
  lastReadCount += tot;

  return TRUE;
}


PBoolean PSoundChannelSNDIO::SetFormat(unsigned numChannels,
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
      PTRACE(6, "SNDIO\tTried to change read/write format without stopping");
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


unsigned PSoundChannelSNDIO::GetChannels()   const
{
  return mNumChannels;
}


unsigned PSoundChannelSNDIO::GetSampleRate() const
{
  return mSampleRate;
}


unsigned PSoundChannelSNDIO::GetSampleSize() const
{
  return mBitsPerSample;
}


PBoolean PSoundChannelSNDIO::SetBuffers(PINDEX size, PINDEX count)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  PAssert(size > 0 && count > 0 && count < 65536, PInvalidParameter);

  if (isInitialised) {
    if (mFragSize != (unsigned)size || mFragCount != (unsigned)count) {
      PTRACE(6, "SNDIO\tTried to change buffers without stopping");
      return FALSE;
    }
    return TRUE;
  }

  mFragSize = size;
  mFragCount = count;
  isInitialised = FALSE;

  return TRUE;
}


PBoolean PSoundChannelSNDIO::GetBuffers(PINDEX & size, PINDEX & count)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  count = mFragCount;
  size = mFragSize;

  return TRUE;
}


PBoolean PSoundChannelSNDIO::PlaySound(const PSound & sound, PBoolean wait)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  if (!Write((const BYTE *)sound, sound.GetSize()))
    return FALSE;

  if (wait)
    return WaitForPlayCompletion();

  return TRUE;
}


PBoolean PSoundChannelSNDIO::PlayFile(const PFilePath & filename, PBoolean wait)
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


PBoolean PSoundChannelSNDIO::HasPlayCompleted()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return TRUE;
}


PBoolean PSoundChannelSNDIO::WaitForPlayCompletion()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return TRUE;
}


PBoolean PSoundChannelSNDIO::RecordSound(PSound & sound)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return FALSE;
}


PBoolean PSoundChannelSNDIO::RecordFile(const PFilePath & filename)
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return FALSE;
}


PBoolean PSoundChannelSNDIO::StartRecording()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  return TRUE;
}


PBoolean PSoundChannelSNDIO::IsRecordBufferFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 0));
}


PBoolean PSoundChannelSNDIO::AreAllRecordBuffersFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 0));
}


PBoolean PSoundChannelSNDIO::WaitForRecordBufferFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  // return PXSetIOBlock(PXReadBlock, readTimeout);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 1000));
}


PBoolean PSoundChannelSNDIO::WaitForAllRecordBuffersFull()
{
  if (!hdl)
    return SetErrorValues(NotOpen, EBADF);

  struct pollfd pfd;
  int events = POLLIN;
  sio_pollfd(hdl, &pfd, events);
  return ConvertOSError(::poll(&pfd, 1, 1000));
}


PBoolean PSoundChannelSNDIO::Abort()
{
  return TRUE;
}


PBoolean PSoundChannelSNDIO::SetVolume(unsigned newVal)
{
  if (!hdl)
    return FALSE;

  return FALSE;
}


PBoolean  PSoundChannelSNDIO::GetVolume(unsigned &devVol)
{
  if (!hdl)
    return FALSE;

  devVol = 0;
  return FALSE;
}
  


// End of file
