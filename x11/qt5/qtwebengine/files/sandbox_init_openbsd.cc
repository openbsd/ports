/*
 * Copyright (c) 2016 Robert Nagy <robert@openbsd.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include "content/common/sandbox_init_openbsd.h"

#include "base/command_line.h"
#include "base/logging.h"
#include "base/rand_util.h"
#include "base/sys_info.h"
#include "content/public/common/content_switches.h"
#include "content/public/common/sandbox_init.h"

namespace content {

bool InitializeSandbox() {
  const base::CommandLine& command_line =
      *base::CommandLine::ForCurrentProcess();
  if (command_line.HasSwitch(switches::kNoSandbox))
    return false;

  std::string process_type =
      command_line.GetSwitchValueASCII(switches::kProcessType);
  VLOG(1) << "InitializeSandbox() process_type=" << process_type;
  if (process_type.empty()) {
    // Browser process isn't sandboxed.
    return false;
  } else if (process_type == switches::kRendererProcess) {
    // prot_exec needed by v8
    // flock needed by sqlite3 locking
    if (pledge("stdio rpath flock prot_exec sendfd", NULL) == -1) {
      LOG(ERROR) << "pledge() failed, errno: " << errno;
      _exit(1);
    }
  } else if (process_type == switches::kGpuProcess) {
    if (pledge("stdio drm prot_exec sendfd", NULL) == -1) {
      LOG(ERROR) << "pledge() failed, errno: " << errno;
      _exit(1);
    }
  } else if ((process_type == switches::kPpapiInProcess) ||
             (process_type == switches::kPpapiPluginProcess)) {
    // "cache" the amount of physical memory before pledge(2)
    base::SysInfo::AmountOfPhysicalMemoryMB();
    // Allow access to /dev/urandom.
    base::GetUrandomFD();
    // prot_exec needed by v8
    if (pledge("stdio prot_exec sendfd", NULL) == -1) {
      LOG(ERROR) << "pledge() failed, errno: " << errno;
      _exit(1);
    }
  } else if (process_type == switches::kUtilityProcess) {
    // "cache" the amount of physical memory before pledge(2)
    base::SysInfo::AmountOfPhysicalMemoryMB();
    if (pledge("stdio rpath cpath wpath fattr", NULL) == -1) {
      LOG(ERROR) << "pledge() failed, errno: " << errno;
      _exit(1);
    }
  } else {
    return false;
  }

  return true;
}

}  // namespace content
