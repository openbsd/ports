/*	$OpenBSD: ssl-openssl.c,v 1.9 2006/05/22 06:14:51 brad Exp $	*/

/*
 * OpenSSL SSL-plugin for gaim
 *
 * Copyright (c) 2004 Brad Smith <brad@comstyle.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include "internal.h"
#include "debug.h"
#include "plugin.h"
#include "sslconn.h"
#include "version.h"

#define SSL_OPENSSL_PLUGIN_ID "ssl-openssl"

#ifdef HAVE_OPENSSL

#include <openssl/ssl.h>
#include <openssl/err.h>

typedef struct
{
	SSL	*ssl;
	SSL_CTX	*ssl_ctx;
} GaimSslOpensslData;

#define GAIM_SSL_OPENSSL_DATA(gsc) ((GaimSslOpensslData *)gsc->private_data)

/*
 * ssl_openssl_init_openssl
 *
 * load the error strings we might want to use eventually, and init the
 * openssl library
 */
static void
ssl_openssl_init_openssl(void)
{
	/*
	 * load the error number to string strings so that we can make sense
	 * of ssl issues while debugging this code
	 */
	SSL_load_error_strings();

	/*
	 * we need to initialise the openssl library
	 * we do not seed the random number generator, although we probably
	 * should in gaim-win32.
	 */
	SSL_library_init();
}

/*
 * ssl_openssl_init
 */
static gboolean
ssl_openssl_init(void)
{
	return (TRUE);
}

/*
 * ssl_openssl_uninit
 *
 * couldn't find anything to match the call to SSL_library_init in the man
 * pages, i wonder if there actually is anything we need to call
 */
static void
ssl_openssl_uninit(void)
{
	ERR_free_strings();
}

/*
 * ssl_openssl_connect_cb
 *
 * given a socket, put an openssl connection around it.
 */
static void
ssl_openssl_connect_cb(gpointer data, gint source, GaimInputCondition cond)
{
	GaimSslConnection *gsc = (GaimSslConnection *)data;
	GaimSslOpensslData *openssl_data;

	/*
	 * we need a valid file descriptor to associate the SSL connection with.
	 */
	if (source < 0) {
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, GAIM_SSL_CONNECT_FAILED,
				gsc->connect_cb_data);

		gaim_ssl_close(gsc);
		return;
	}

	gsc->fd = source;

	/*
	 * allocate some memory to store variables for the openssl connection.
	 * the memory comes zero'd from g_new0 so we don't need to null the
	 * pointers held in this struct.
	 */
	openssl_data = g_new0(GaimSslOpensslData, 1);
	gsc->private_data = openssl_data;

	/*
	 * allocate a new SSL_CTX object
	*/
	openssl_data->ssl_ctx = SSL_CTX_new(SSLv23_client_method());
	if (openssl_data->ssl_ctx == NULL) {
		gaim_debug_error("openssl", "SSL_CTX_new failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, GAIM_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		gaim_ssl_close(gsc);
		return;
	}

	/*
	 * allocate a new SSL object
	 */
	openssl_data->ssl = SSL_new(openssl_data->ssl_ctx);
	if(openssl_data->ssl == NULL) {
		gaim_debug_error("openssl", "SSL_new failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, GAIM_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		gaim_ssl_close(gsc);
		return;
	}

	/*
	 * now we associate the file descriptor we have with the SSL connection
	 */
	if (SSL_set_fd(openssl_data->ssl, source) == 0) {
		gaim_debug_error("openssl", "SSL_set_fd failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, GAIM_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		gaim_ssl_close(gsc);
		return;
	}

	/*
	 * finally, do the negotiation that sets up the SSL connection between
	 * here and there.
	 */
	if (SSL_connect(openssl_data->ssl) <= 0) {
		gaim_debug_error("openssl", "SSL_connect failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, GAIM_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		gaim_ssl_close(gsc);
		return;
	}

	/* SSL connected now */
	gsc->connect_cb(gsc->connect_cb_data, gsc, cond);
}

static void
ssl_openssl_close(GaimSslConnection *gsc)
{
	GaimSslOpensslData *openssl_data = GAIM_SSL_OPENSSL_DATA(gsc);
	int i;

	if (openssl_data == NULL)
		return;

	if (openssl_data->ssl != NULL) {
		i = SSL_shutdown(openssl_data->ssl);
		if (i == 0)
			SSL_shutdown(openssl_data->ssl);
		SSL_free(openssl_data->ssl);
	}

	if (openssl_data->ssl_ctx != NULL)
		SSL_CTX_free(openssl_data->ssl_ctx);

	g_free(openssl_data);
}

static size_t
ssl_openssl_read(GaimSslConnection *gsc, void *data, size_t len)
{
	GaimSslOpensslData *openssl_data = GAIM_SSL_OPENSSL_DATA(gsc);
	int i;

	i = SSL_read(openssl_data->ssl, data, len);
	if (i < 0)
		i = 0;

	return (i);
}

static size_t
ssl_openssl_write(GaimSslConnection *gsc, const void *data, size_t len)
{
	GaimSslOpensslData *openssl_data = GAIM_SSL_OPENSSL_DATA(gsc);
	int s = 0;

	if (openssl_data != NULL)
		s = SSL_write(openssl_data->ssl, data, len);      

	if (s < 0)
		s = 0;

	return (s);
}

static GaimSslOps ssl_ops = {
	ssl_openssl_init,
	ssl_openssl_uninit,
	ssl_openssl_connect_cb,
	ssl_openssl_close,
	ssl_openssl_read,
	ssl_openssl_write
};

#endif /* HAVE_OPENSSL */

static gboolean
plugin_load(GaimPlugin *plugin)
{
#ifdef HAVE_OPENSSL
	if (!gaim_ssl_get_ops())
		gaim_ssl_set_ops(&ssl_ops);

	/* Init OpenSSL now so others can use it even if sslconn never does */
	ssl_openssl_init_openssl();

	return (TRUE);
#else
	return (FALSE);
#endif
}

static gboolean
plugin_unload(GaimPlugin *plugin)
{
#ifdef HAVE_OPENSSL
	if (gaim_ssl_get_ops() == &ssl_ops)
		gaim_ssl_set_ops(NULL);
#endif

	return (TRUE);
}

static GaimPluginInfo info = {
	GAIM_PLUGIN_MAGIC,
	GAIM_MAJOR_VERSION,
	GAIM_MINOR_VERSION,
	GAIM_PLUGIN_STANDARD,				/* type */
	NULL,						/* ui_requirement */
	GAIM_PLUGIN_FLAG_INVISIBLE,			/* flags */
	NULL,						/* dependencies */
	GAIM_PRIORITY_DEFAULT,				/* priority */

	SSL_OPENSSL_PLUGIN_ID,				/* id */
	N_("OpenSSL"),					/* name */
	VERSION,					/* version */

	N_("Provides SSL support through OpenSSL."),	/* description */
	N_("Provides SSL support through OpenSSL."),
	"OpenSSL",
	NULL,						/* homepage */

	plugin_load,					/* load */
	plugin_unload,					/* unload */
	NULL,						/* destroy */

	NULL,						/* ui_info */
	NULL						/* extra_info */
};

static void
init_plugin(GaimPlugin *plugin)
{
}

GAIM_INIT_PLUGIN(ssl_openssl, init_plugin, info)
