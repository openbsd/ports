--- /dev/null	Sat Aug 11 00:51:12 2001
+++ security/coreconf/OpenBSD.mk	Sat Aug 11 00:56:21 2001
@@ -0,0 +1,73 @@
+#
+# The contents of this file are subject to the Mozilla Public
+# License Version 1.1 (the "License"); you may not use this file
+# except in compliance with the License. You may obtain a copy of
+# the License at http://www.mozilla.org/MPL/
+# 
+# Software distributed under the License is distributed on an "AS
+# IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
+# implied. See the License for the specific language governing
+# rights and limitations under the License.
+# 
+# The Original Code is the Netscape security libraries.
+# 
+# The Initial Developer of the Original Code is Netscape
+# Communications Corporation.  Portions created by Netscape are 
+# Copyright (C) 1994-2000 Netscape Communications Corporation.  All
+# Rights Reserved.
+# 
+# Contributor(s):
+# 
+# Alternatively, the contents of this file may be used under the
+# terms of the GNU General Public License Version 2 or later (the
+# "GPL"), in which case the provisions of the GPL are applicable 
+# instead of those above.  If you wish to allow use of your 
+# version of this file only under the terms of the GPL and not to
+# allow others to use your version of this file under the MPL,
+# indicate your decision by deleting the provisions above and
+# replace them with the notice and other provisions required by
+# the GPL.  If you do not delete the provisions above, a recipient
+# may use your version of this file under either the MPL or the
+# GPL.
+#
+# Config stuff for FreeBSD
+#
+
+include $(CORE_DEPTH)/coreconf/UNIX.mk
+
+DEFAULT_COMPILER	= cc
+CC			= cc
+CCC			= c++
+RANLIB			= ranlib
+
+ifeq ($(OS_TEST),alpha)
+CPU_ARCH		= alpha
+else
+OS_REL_CFLAGS		= -Di386
+CPU_ARCH		= x86
+endif
+
+OS_CFLAGS		= $(DSO_CFLAGS) $(OS_REL_CFLAGS) -ansi -Wall $(THREAD_FLAG) -DHAVE_STRERROR -DHAVE_BSD_FLOCK
+
+#
+# The default implementation strategy for OpenBSD is pthreads.
+#
+ifndef CLASSIC_NSPR
+USE_PTHREADS		= 1
+DEFINES			+= -D_THREAD_SAFE
+THREAD_FLAG		= -pthread
+endif
+
+ARCH			= openbsd
+
+DLL_SUFFIX		= so.1.0
+
+DSO_CFLAGS		= -fPIC
+DSO_LDOPTS		= -shared
+DSO_LDFLAGS		=
+
+MKSHLIB			= $(CC) $(DSO_LDOPTS)
+
+G++INCLUDES		= -I/usr/include/g++
+
+INCLUDES		+= -I/usr/X11R6/include
