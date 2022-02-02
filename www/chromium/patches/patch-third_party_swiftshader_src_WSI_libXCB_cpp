Index: third_party/swiftshader/src/WSI/libXCB.cpp
--- third_party/swiftshader/src/WSI/libXCB.cpp.orig
+++ third_party/swiftshader/src/WSI/libXCB.cpp
@@ -42,7 +42,7 @@ LibXcbExports *LibXCB::loadExports()
 			return LibXcbExports(RTLD_DEFAULT);
 		}
 
-		if(void *lib = loadLibrary("libxcb.so.1"))
+		if(void *lib = loadLibrary("libxcb.so"))
 		{
 			return LibXcbExports(lib);
 		}
