--- main.c.orig	Sat Aug 19 21:46:16 2000
+++ main.c	Sat Aug 19 21:43:54 2000
@@ -147,8 +147,8 @@ int main(int argc, char **argv)
 
 	if ( parse_options(argc, argv) == -1 )
 	{
-		printf("hping2: missing host argument\n"
-			"Try `hping2 --help' for more information.\n");
+		printf("%s: missing host argument\n"
+			"Try `%s --help' for more information.\n", argv[0], argv[0]);
 		exit(1);
 	}
 
