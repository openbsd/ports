--- src/util/dict_ldap.c.orig	Sun May  7 23:59:29 2000
+++ src/util/dict_ldap.c	Mon Oct  2 17:34:39 2000
@@ -136,6 +136,9 @@
     char   *myname = "dict_ldap_connect";
     void    (*saved_alarm) (int);
     int     rc = 0;
+#ifdef NSLDAP 
+    LDAPMemCache *dircache;
+#endif
 
     dict_errno = 0;
 
@@ -172,7 +175,16 @@
      * Configure alias dereferencing for this connection. Thanks to Mike
      * Mattice for this.
      */
+#if ( defined NSLDAP ) || ( defined LDAP_API_VERSION && LDAP_API_VERSION >= 2004 ) 
+    rc = ldap_set_option(dict_ldap->ld, LDAP_OPT_DEREF,
+			 (void*)&dict_ldap->dereference);
+    if (rc != LDAP_SUCCESS) {
+	msg_warn("%s: Unable to set LDAP_OPT_DEREF to %d: %d (%s)",
+		 myname, dict_ldap->dereference, rc, ldap_err2string(rc));
+    }
+#else
     dict_ldap->ld->ld_deref = dict_ldap->dereference;
+#endif
 
     /*
      * If this server requires a bind, do so. Thanks to Sam Tardieu for
@@ -207,7 +219,26 @@
 		("%s: Enabling %ld-byte cache for %s with %ld-second expiry",
 		 myname, dict_ldap->cache_size, dict_ldap->ldapsource,
 		 dict_ldap->cache_expiry);
-
+#ifdef NSLDAP 
+	rc = ldap_memcache_init(dict_ldap->cache_expiry, dict_ldap->cache_size,
+				NULL, NULL, &dircache);
+	if (rc != LDAP_SUCCESS) {
+	    msg_warn
+		("%s: Unable to configure cache for %s: %d (%s) -- continuing",
+		 myname, dict_ldap->ldapsource, rc, ldap_err2string(rc));
+	} else {
+	    rc = ldap_memcache_set(dict_ldap->ld, dircache);
+	    if (rc != LDAP_SUCCESS) {
+		msg_warn
+		    ("%s: Unable to configure cache for %s: %d (%s) -- continuing",
+		     myname, dict_ldap->ldapsource, rc, ldap_err2string(rc));
+	    } else {
+		if (msg_verbose)
+		    msg_info("%s: Caching enabled for %s",
+			     myname, dict_ldap->ldapsource);
+	    }
+	}
+#else
 	rc = ldap_enable_cache(dict_ldap->ld, dict_ldap->cache_expiry,
 			       dict_ldap->cache_size);
 	if (rc != LDAP_SUCCESS) {
@@ -219,6 +250,7 @@
 		msg_info("%s: Caching enabled for %s",
 			 myname, dict_ldap->ldapsource);
 	}
+#endif
     }
     if (msg_verbose)
 	msg_info("%s: Cached connection handle for LDAP source %s",
@@ -417,10 +449,24 @@
 	    }
 	    ldap_value_free(attr_values);
 	}
+#ifdef NSLDAP
+	rc = ldap_get_lderrno(dict_ldap->ld, NULL, NULL);
+	if (rc != LDAP_SUCCESS)
+	    msg_warn
+		("%s: Had some trouble with entries returned by search: %s",
+		 myname, ldap_err2string(rc));
+#elif ( defined LDAP_API_VERSION && LDAP_API_VERSION >= 2004 ) 
+	ldap_get_option(dict_ldap->ld, LDAP_OPT_ERROR_NUMBER, &rc);
+	if (rc != LDAP_SUCCESS)
+		msg_warn
+		("%s: Had some trouble with entries returned by search: %s",
+		myname, ldap_err2string(rc));
+#else
 	if (dict_ldap->ld->ld_errno != LDAP_SUCCESS)
 	    msg_warn
 		("%s: Had some trouble with entries returned by search: %s",
 		 myname, ldap_err2string(dict_ldap->ld->ld_errno));
+#endif
 	if (msg_verbose)
 	    msg_info("%s: Search returned %s", myname,
 		     VSTRING_LEN(result) >
