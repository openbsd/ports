// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef MEDIA_AUDIO_OPENBSD_AUDIO_MANAGER_OPENBSD_H_
#define MEDIA_AUDIO_OPENBSD_AUDIO_MANAGER_OPENBSD_H_

#include <set>

#include "base/compiler_specific.h"
#include "media/audio/audio_manager_base.h"

namespace media {

class MEDIA_EXPORT AudioManagerOpenBSD : public AudioManagerBase {
 public:
  AudioManagerOpenBSD(AudioLogFactory* audio_log_factory);

  // Implementation of AudioManager.
  bool HasAudioOutputDevices() override;
  bool HasAudioInputDevices() override;
  void ShowAudioInputSettings() override;
  void GetAudioInputDeviceNames(AudioDeviceNames* device_names) override;
  void GetAudioOutputDeviceNames(AudioDeviceNames* device_names) override;
  AudioParameters GetInputStreamParameters(
      const std::string& device_id) override;

  // Implementation of AudioManagerBase.
  AudioOutputStream* MakeLinearOutputStream(
      const AudioParameters& params) override;
  AudioOutputStream* MakeLowLatencyOutputStream(
      const AudioParameters& params,
      const std::string& device_id) override;
  AudioInputStream* MakeLinearInputStream(
      const AudioParameters& params, const std::string& device_id) override;
  AudioInputStream* MakeLowLatencyInputStream(
      const AudioParameters& params, const std::string& device_id) override;

 protected:
  ~AudioManagerOpenBSD() override;

  AudioParameters GetPreferredOutputStreamParameters(
      const std::string& output_device_id,
      const AudioParameters& input_params) override;

 private:
  // Called by MakeLinearOutputStream and MakeLowLatencyOutputStream.
  AudioOutputStream* MakeOutputStream(const AudioParameters& params);
  AudioInputStream* MakeInputStream(const AudioParameters& params);

  // Flag to indicate whether the pulse library has been initialized or not.
  bool pulse_library_is_initialized_;

  DISALLOW_COPY_AND_ASSIGN(AudioManagerOpenBSD);
};

}  // namespace media

#endif  // MEDIA_AUDIO_OPENBSD_AUDIO_MANAGER_OPENBSD_H_
