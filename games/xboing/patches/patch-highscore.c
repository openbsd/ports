$OpenBSD: patch-highscore.c,v 1.2 2004/03/05 22:56:42 naddy Exp $
--- highscore.c.orig	1996-11-22 02:28:46.000000000 +0100
+++ highscore.c	2004-03-05 23:30:39.000000000 +0100
@@ -55,6 +55,7 @@
 #include <time.h>
 #include <file.h>
 #include <sys/param.h>
+#include <sys/stat.h>
 #include <X11/Xlib.h>
 #include <X11/Xutil.h>
 #include <X11/Xos.h>
@@ -119,7 +120,7 @@ static void SetHighScoreWait(enum HighSc
 static void InitialiseHighScores(void);
 static void SortHighScores(void);
 static void DeleteScore(int i);
-static int LockUnlock(int cmd);
+static int LockUnlock(int cmd, int fd);
 #else
 static int LockUnlock();
 static void DeleteScore();
@@ -844,7 +845,7 @@ int CheckAndAddScoreToHighScore(score, l
 
 	/* Lock the file for me only */
 	if (type == GLOBAL)
-		id = LockUnlock(LOCK_FILE);
+		id = LockUnlock(LOCK_FILE, -1);
 
 	/* Read in the lastest scores */
 	if (ReadHighScoreTable(type) == False)
@@ -875,8 +876,8 @@ int CheckAndAddScoreToHighScore(score, l
 				{
 					/* Don't add as score is smaller */
 					if (id != -1) 
-						id = LockUnlock(UNLOCK_FILE);
-					return False;
+						id = LockUnlock(UNLOCK_FILE, id);
+					goto doUnlock;
 				}
 			}
 		}	/* for */
@@ -898,16 +899,17 @@ int CheckAndAddScoreToHighScore(score, l
 
 				/* Unlock the file now thanks */
 				if (id != -1) 
-					id = LockUnlock(UNLOCK_FILE);
+					id = LockUnlock(UNLOCK_FILE, id);
 
 				/* Yes - it was placed in the highscore */
 				return True;
 			}
 		}
 
+doUnlock:
 		/* Unlock the file now thanks */
 		if (id != -1) 
-			id = LockUnlock(UNLOCK_FILE);
+			id = LockUnlock(UNLOCK_FILE, id);
 
 		/* Not even a highscore - loser! */
 		return False;
@@ -1185,10 +1187,10 @@ void ResetHighScore(type)
 }
 
 #if NeedFunctionPrototypes
-static int LockUnlock(int cmd)
+static int LockUnlock(int cmd, int fd)
 #else
 static int LockUnlock(cmd)
-	int cmd;
+	int cmd, fd;
 #endif
 {
 	static int 	inter = -1;
@@ -1225,6 +1227,9 @@ static int LockUnlock(cmd)
 	/* Open the highscore file for both read & write */
 	if (cmd == LOCK_FILE)
 		inter = open(filename, O_CREAT | O_RDWR, 0666);
+	else
+		/* use old fd to unlock */
+		inter = fd;
 
 #ifndef NO_LOCKING
 
