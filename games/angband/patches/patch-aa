--- src/cmd4.c.orig	Thu Aug  3 14:01:43 2000
+++ src/cmd4.c	Thu Aug  3 14:08:23 2000
@@ -2637,12 +2637,15 @@ static void do_cmd_knowledge_artifacts(v
 
 	bool *okay;
 
+	int fd;
 
 	/* Temporary file */
-	if (path_temp(file_name, 1024)) return;
+	strcpy(file_name, "/tmp/ang.XXXXXXXXXX");
+	fd = mkstemp(file_name);
+	 if (fd < 0) fff = NULL;
+	 else fff = fdopen(fd, "w");
 
-	/* Open a new file */
-	fff = my_fopen(file_name, "w");
+/*	fff = my_fopen(file_name, "w"); */
 
 	/* Allocate the "okay" array */
 	C_MAKE(okay, z_info->a_max, bool);
@@ -2777,12 +2780,15 @@ static void do_cmd_knowledge_uniques(voi
 	u16b why = 2;
 	u16b *who;
 
+	int fd;
 
 	/* Temporary file */
-	if (path_temp(file_name, 1024)) return;
+	strcpy(file_name, "/tmp/ang.XXXXXXXXXX");
+	fd = mkstemp(file_name);
+	 if (fd < 0) fff = NULL;
+	 else fff = fdopen(fd, "w");
 
-	/* Open a new file */
-	fff = my_fopen(file_name, "w");
+/*	fff = my_fopen(file_name, "w"); */
 
 	/* Allocate the "who" array */
 	C_MAKE(who, z_info->r_max, u16b);
@@ -2850,12 +2856,15 @@ static void do_cmd_knowledge_objects(voi
 
 	char file_name[1024];
 
+	int fd;
 
 	/* Temporary file */
-	if (path_temp(file_name, 1024)) return;
+	strcpy(file_name, "/tmp/ang.XXXXXXXXXX");
+	fd = mkstemp(file_name);
+	 if (fd < 0) fff = NULL;
+	 else fff = fdopen(fd, "w");
 
-	/* Open a new file */
-	fff = my_fopen(file_name, "w");
+/*	fff = my_fopen(file_name, "w"); */
 
 	/* Scan the object kinds */
 	for (k = 1; k < z_info->k_max; k++)
