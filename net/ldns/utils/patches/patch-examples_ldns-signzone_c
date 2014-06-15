$OpenBSD: patch-examples_ldns-signzone_c,v 1.1 2014/06/15 20:20:34 sthen Exp $
--- examples/ldns-signzone.c.orig	Thu Jun 12 19:37:28 2014
+++ examples/ldns-signzone.c	Thu Jun 12 19:39:31 2014
@@ -39,8 +39,10 @@ usage(FILE *fp, const char *prog) {
 	fprintf(fp, "  -o <domain>\torigin for the zone\n");
 	fprintf(fp, "  -v\t\tprint version and exit\n");
 	fprintf(fp, "  -A\t\tsign DNSKEY with all keys instead of minimal\n");
+#ifdef HAVE_ENGINE_LOAD_CRYPTODEV
 	fprintf(fp, "  -E <name>\tuse <name> as the crypto engine for signing\n");
 	fprintf(fp, "           \tThis can have a lot of extra options, see the manual page for more info\n");
+#endif
 	fprintf(fp, "  -k <id>,<int>\tuse key id with algorithm int from engine\n");
 	fprintf(fp, "  -K <id>,<int>\tuse key id with algorithm int from engine as KSK\n");
 	fprintf(fp, "\t\tif no key is given (but an external one is used through the engine support, it might be necessary to provide the right algorithm number.\n");
@@ -470,6 +472,7 @@ main(int argc, char *argv[])
 		case 'A':
 			signflags |= LDNS_SIGN_DNSKEY_WITH_ZSK;
 			break;
+#ifdef HAVE_ENGINE_LOAD_CRYPTODEV
 		case 'E':
 			ENGINE_load_builtin_engines();
 			ENGINE_load_dynamic();
@@ -494,6 +497,7 @@ main(int argc, char *argv[])
 				ENGINE_set_default(engine, 0);
 			}
 			break;
+#endif
 		case 'k':
 			eng_key_l = strchr(optarg, ',');
 			if (eng_key_l && strlen(eng_key_l) > 1) {
