Index: third_party/swiftshader/src/System/SharedLibrary.hpp
--- third_party/swiftshader/src/System/SharedLibrary.hpp.orig
+++ third_party/swiftshader/src/System/SharedLibrary.hpp
@@ -96,7 +96,7 @@ inline void *loadLibrary(const char *path)
 
 inline void *getLibraryHandle(const char *path)
 {
-#	ifdef __ANDROID__
+#	if defined(__ANDROID__) || defined(__OpenBSD__) || defined(__FreeBSD__)
 	// bionic doesn't support RTLD_NOLOAD before L
 	return dlopen(path, RTLD_NOW | RTLD_LOCAL);
 #	else
