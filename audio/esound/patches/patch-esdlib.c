--- esdlib.c.orig	Wed Jun 19 09:45:14 2002
+++ esdlib.c	Fri Jul 19 18:26:44 2002
@@ -660,7 +660,7 @@ int esd_open_sound( const char *host )
 		setsid();
 		cmd = malloc(sizeof("esd  -spawnfd 999999") + (esd_spawn_options?strlen(esd_spawn_options):0));
 
-		sprintf(cmd, "esd %s -spawnfd %d", esd_spawn_options?esd_spawn_options:"", esd_pipe[1]);
+		sprintf(cmd, "exec esd %s -spawnfd %d", esd_spawn_options?esd_spawn_options:"", esd_pipe[1]);
 
 		execl("/bin/sh", "/bin/sh", "-c", cmd, NULL);
 		perror("execl");
