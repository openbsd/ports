$OpenBSD: patch-src_runtime_runtime.c,v 1.1.1.1 2008/04/14 12:29:40 deanna Exp $
--- src/runtime/runtime.c.orig	Thu Oct 25 21:33:34 2007
+++ src/runtime/runtime.c	Thu Apr 10 14:13:34 2008
@@ -279,6 +279,8 @@ main(int argc, char *argv[], char *envp[])
                 dynamic_space_size = strtol(argv[argi++], 0, 0) << 20;
                 if (errno)
                     lose("argument to --dynamic-space-size is not a number");
+                if (dynamic_space_size > DEFAULT_DYNAMIC_SPACE_SIZE)
+                    lose("argument to --dynamic-space-size is too large");
             } else if (0 == strcmp(arg, "--debug-environment")) {
                 int n = 0;
                 printf("; Commandline arguments:\n");
