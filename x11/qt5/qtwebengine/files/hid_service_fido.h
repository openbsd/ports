// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef SERVICE_DEVICE_HID_HID_SERVICE_FIDO_H_
#define SERVICE_DEVICE_HID_HID_SERVICE_FIDO_H_

#include <string>

#include "base/macros.h"
#include "base/memory/ref_counted.h"
#include "base/memory/weak_ptr.h"
#include "services/device/hid/hid_service.h"

namespace device {

class HidServiceFido : public HidService {
public:
  HidServiceFido();
  ~HidServiceFido() override;

  void Connect(const std::string &device_guid,
               ConnectCallback connect) override;
  base::WeakPtr<HidService> GetWeakPtr() override;

private:
  class BlockingTaskHelper;
  const scoped_refptr<base::SequencedTaskRunner> task_runner_;
  const scoped_refptr<base::SequencedTaskRunner> blocking_task_runner_;
  base::WeakPtrFactory<HidServiceFido> weak_factory_;
  // |helper_| lives on the sequence |blocking_task_runner_| posts to and holds
  // a weak reference back to the service that owns it.
  std::unique_ptr<BlockingTaskHelper> helper_;

  DISALLOW_COPY_AND_ASSIGN(HidServiceFido);
};

} // namespace device

#endif // SERVICE_DEVICE_HID_HID_SERVICE_FIDO_H_
