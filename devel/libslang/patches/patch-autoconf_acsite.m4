--- autoconf/acsite.m4.orig	Tue Feb 20 21:17:29 2001
+++ autoconf/acsite.m4	Fri Dec  7 23:37:35 2001
@@ -94,6 +94,9 @@ case "$host_os" in
       RPATH="-rpath "
     fi
   ;;
+  *openbsd*)
+    RPATH="-Wl,-R,"
+  ;;
 esac
 ])
 
@@ -543,6 +546,18 @@ case "$host_os" in
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
+    if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`"; then
+      DYNAMIC_LINK_FLAGS="-Wl,-E"
+    fi
+  ;;
   * )
     echo "Note: ELF compiler for host_os=$host_os may be wrong"
     ELF_CC="$CC"
