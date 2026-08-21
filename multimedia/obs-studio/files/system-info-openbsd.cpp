#include "system-info.hpp"
#include "util/platform.h"
#include <sys/utsname.h>
#include <string>

void system_info(GoLiveApi::Capabilities &capabilities)
{
	UNUSED_PARAMETER(capabilities.gpu);
	UNUSED_PARAMETER(capabilities.gaming_features);

	{
		auto &cpu_data = capabilities.cpu;
		cpu_data.physical_cores = os_get_physical_cores();
		cpu_data.logical_cores = os_get_logical_cores();
		cpu_data.name = "Unknown";
		cpu_data.speed = 0;
	}

	{
		auto &memory_data = capabilities.memory;
		memory_data.total = os_get_sys_total_size();
		memory_data.free = os_get_sys_free_size();
	}

	{
		auto &system_data = capabilities.system;
		struct utsname utsinfo;
		if (uname(&utsinfo) == 0) {
			system_data.name = utsinfo.sysname;
			system_data.release = utsinfo.release;
			system_data.bits = strstr(utsinfo.machine, "64") ? 64 : 32;
			system_data.arm = strstr(utsinfo.machine, "aarch") ? true : false;
			system_data.version = utsinfo.sysname;
			system_data.version.append(" ");
			system_data.version.append(utsinfo.release);
		} else {
			system_data.name = "OpenBSD";
			system_data.release = "unknown";
			system_data.version = "unknown";
		}
		UNUSED_PARAMETER(system_data.build);
		UNUSED_PARAMETER(system_data.revision);
		system_data.armEmulation = os_get_emulation_status();
	}
}
