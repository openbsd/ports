--- mbox.c.orig	Wed Aug  4 15:52:22 1999
+++ mbox.c	Fri Sep 10 06:29:20 1999
@@ -275,7 +275,7 @@
 
       if (!ctx->quiet && ReadInc && ((count % ReadInc == 0) || count == 1))
 	mutt_message (_("Reading %s... %d (%d%%)"), ctx->path, count,
-		      ftell (ctx->fp) / (ctx->size / 100 + 1));
+		      (int)(ftell (ctx->fp) / (ctx->size / 100 + 1)));
 
       if (ctx->msgcount == ctx->hdrmax)
 	mx_alloc_memory (ctx);
@@ -765,7 +765,7 @@
       j++;
       if (!ctx->quiet && WriteInc && ((i % WriteInc) == 0 || j == 1))
 	mutt_message (_("Writing messages... %d (%d%%)"), i,
-		      ftell (ctx->fp) / (ctx->size / 100 + 1));
+		      (int)(ftell (ctx->fp) / (ctx->size / 100 + 1)));
 
       if (ctx->magic == M_MMDF)
       {
