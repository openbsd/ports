--- autoconf/acsite.m4.orig	Tue Feb 20 21:17:29 2001
+++ autoconf/acsite.m4	Sun Mar  4 00:51:04 2001
@@ -94,6 +94,9 @@
       RPATH="-rpath "
     fi
   ;;
+  *openbsd*)
+    RPATH="-Wl,-rpath,"
+  ;;
 esac
 ])
 
@@ -543,6 +546,18 @@
        CC_SHARED="cc \$(CFLAGS) -shared -K pic"
      fi
      ;;
+  *openbsd* )
+    DYNAMIC_LINK_FLAGS=""
+    ELF_CC="$CC"
+    ELF_CFLAGS="$CFLAGS -fpic"
+    ELF_LINK="$CC -shared $ELF_CFLAGS"
+    ELF_LINK_CMD="\$(ELF_LINK)"
+    ELF_DEP_LIBS="\$(DL_LIB) -lm"
+    CC_SHARED="$CC -shared $ELF_CFLAGS"
+    if test "`/usr/bin/file /usr/lib/libc.so.* | grep ELF`" != ""; then
+      DYNAMIC_LINK_FLAGS="-Wl,-E"
+    fi
+  ;;
   * )
     echo "Note: ELF compiler for host_os=$host_os may be wrong"
     ELF_CC="$CC"
