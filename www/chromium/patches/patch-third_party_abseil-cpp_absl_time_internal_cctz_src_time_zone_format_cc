Index: third_party/abseil-cpp/absl/time/internal/cctz/src/time_zone_format.cc
--- third_party/abseil-cpp/absl/time/internal/cctz/src/time_zone_format.cc.orig
+++ third_party/abseil-cpp/absl/time/internal/cctz/src/time_zone_format.cc
@@ -19,7 +19,7 @@
 #endif
 
 #if defined(HAS_STRPTIME) && HAS_STRPTIME
-#if !defined(_XOPEN_SOURCE)
+#if !defined(_XOPEN_SOURCE) && !defined(__OpenBSD__) && !defined(__FreeBSD__)
 #define _XOPEN_SOURCE  // Definedness suffices for strptime.
 #endif
 #endif
