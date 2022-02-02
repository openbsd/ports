Index: content/browser/compute_pressure/cpu_probe.cc
--- content/browser/compute_pressure/cpu_probe.cc.orig
+++ content/browser/compute_pressure/cpu_probe.cc
@@ -52,6 +52,7 @@ std::unique_ptr<CpuProbe> CpuProbe::Create() {
 #elif defined(OS_LINUX) || defined(OS_CHROMEOS)
   return CpuProbeLinux::Create();
 #else
+  NOTIMPLEMENTED();
   return std::make_unique<NullCpuProbe>();
 #endif  // defined(OS_ANDROID)
 }
