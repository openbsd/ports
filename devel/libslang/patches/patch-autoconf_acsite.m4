--- autoconf/acsite.m4.orig	Tue Feb 20 19:17:29 2001
+++ autoconf/acsite.m4	Tue Feb 12 16:09:10 2002
@@ -94,6 +94,9 @@ case "$host_os" in
       RPATH="-rpath "
     fi
   ;;
+  *openbsd*)
+    RPATH="-Wl,-R,"
+  ;;
 esac
 ])
 
@@ -543,6 +546,25 @@ case "$host_os" in
        CC_SHARED="cc \$(CFLAGS) -shared -K pic"
      fi
      ;;
+  *openbsd* )
+    DYNAMIC_LINK_FLAGS=""
+    ELF_CC="$CC"
+    case `arch -s` in
+      sparc64)
+        ELF_CFLAGS="$CFLAGS -fPIC"
+	;;
+      *)
+        ELF_CFLAGS="$CFLAGS -fpic"
+	;;
+    esac
+    ELF_LINK="$CC -shared $ELF_CFLAGS"
+    ELF_LINK_CMD="\$(ELF_LINK)"
+    ELF_DEP_LIBS="\$(DL_LIB) -lm -lcurses"
+    CC_SHARED="$CC -shared $ELF_CFLAGS"
+    if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`"; then
+      DYNAMIC_LINK_FLAGS="-Wl,-E"
+    fi
+  ;;
   * )
     echo "Note: ELF compiler for host_os=$host_os may be wrong"
     ELF_CC="$CC"
