Index: third_party/angle/src/common/system_utils_posix.cpp
--- third_party/angle/src/common/system_utils_posix.cpp.orig
+++ third_party/angle/src/common/system_utils_posix.cpp
@@ -159,7 +159,9 @@ Library *OpenSharedLibraryWithExtension(const char *li
     int extraFlags = 0;
     if (searchType == SearchType::AlreadyLoaded)
     {
+#if !defined(__OpenBSD__)
         extraFlags = RTLD_NOLOAD;
+#endif
     }
 
     std::string fullPath = directory + libraryName;
