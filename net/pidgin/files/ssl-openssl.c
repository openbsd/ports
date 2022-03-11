/*
 * OpenSSL SSL-plugin for purple
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

#include <openssl/ssl.h>
#include <openssl/err.h>

typedef struct
{
	SSL	*ssl;
	SSL_CTX	*ssl_ctx;
	guint	handshake_handler;
} PurpleSslOpensslData;

#define PURPLE_SSL_OPENSSL_DATA(gsc) ((PurpleSslOpensslData *)gsc->private_data)

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
 */
static void
ssl_openssl_uninit(void)
{
}

/*
 * ssl_openssl_handshake_cb
 */
static void
ssl_openssl_handshake_cb(gpointer data, gint source, PurpleInputCondition cond)
{
	PurpleSslConnection *gsc = (PurpleSslConnection *)data;
	PurpleSslOpensslData *openssl_data = PURPLE_SSL_OPENSSL_DATA(gsc);
	int ret, ret2;

	purple_debug_info("openssl", "Connecting to %s\n", gsc->host);

	/*
	 * do the negotiation that sets up the SSL connection between
	 * here and there.
	 */
	ret = SSL_connect(openssl_data->ssl);
	if (ret <= 0) {
		ret2 = SSL_get_error(openssl_data->ssl, ret);

		if (ret2 == SSL_ERROR_WANT_READ || ret2 == SSL_ERROR_WANT_WRITE)
			return;

		purple_debug_error("openssl", "SSL_connect failed: %d\n",
		    ret2);

		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, PURPLE_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		purple_ssl_close(gsc);
		return;
	}

	purple_input_remove(openssl_data->handshake_handler);
	openssl_data->handshake_handler = 0;

	purple_debug_info("openssl", "Connected to %s\n", gsc->host);

	/* SSL connected now */
	gsc->connect_cb(gsc->connect_cb_data, gsc, cond);
}

/*
 * ssl_openssl_connect
 *
 * given a socket, put an openssl connection around it.
 */
static void
ssl_openssl_connect(PurpleSslConnection *gsc)
{
	PurpleSslOpensslData *openssl_data;

	/*
	 * allocate some memory to store variables for the openssl connection.
	 * the memory comes zero'd from g_new0 so we don't need to null the
	 * pointers held in this struct.
	 */
	openssl_data = g_new0(PurpleSslOpensslData, 1);
	gsc->private_data = openssl_data;

	/*
	 * allocate a new SSL_CTX object
	 */
	openssl_data->ssl_ctx = SSL_CTX_new(TLS_method());
	if (openssl_data->ssl_ctx == NULL) {
		purple_debug_error("openssl", "SSL_CTX_new failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, PURPLE_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		purple_ssl_close(gsc);
		return;
	}

	/*
	 * allocate a new SSL object
	 */
	openssl_data->ssl = SSL_new(openssl_data->ssl_ctx);
	if (openssl_data->ssl == NULL) {
		purple_debug_error("openssl", "SSL_new failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, PURPLE_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		purple_ssl_close(gsc);
		return;
	}

	/*
	 * now we associate the file descriptor we have with the SSL connection
	 */
	if (SSL_set_fd(openssl_data->ssl, gsc->fd) == 0) {
		purple_debug_error("openssl", "SSL_set_fd failed\n");
		if (gsc->error_cb != NULL)
			gsc->error_cb(gsc, PURPLE_SSL_HANDSHAKE_FAILED,
				gsc->connect_cb_data);

		purple_ssl_close(gsc);
		return;
	}

	openssl_data->handshake_handler = purple_input_add(gsc->fd,
		PURPLE_INPUT_READ, ssl_openssl_handshake_cb, gsc);

	ssl_openssl_handshake_cb(gsc, gsc->fd, PURPLE_INPUT_READ);
}

static void
ssl_openssl_close(PurpleSslConnection *gsc)
{
	PurpleSslOpensslData *openssl_data = PURPLE_SSL_OPENSSL_DATA(gsc);
	int i;

	if (openssl_data == NULL)
		return;

	if (openssl_data->handshake_handler)
		purple_input_remove(openssl_data->handshake_handler);

	if (openssl_data->ssl != NULL) {
		i = SSL_shutdown(openssl_data->ssl);
		if (i == 0)
			SSL_shutdown(openssl_data->ssl);
		SSL_free(openssl_data->ssl);
	}

	if (openssl_data->ssl_ctx != NULL)
		SSL_CTX_free(openssl_data->ssl_ctx);

	g_free(openssl_data);
	gsc->private_data = NULL;
}

static size_t
ssl_openssl_read(PurpleSslConnection *gsc, void *data, size_t len)
{
	PurpleSslOpensslData *openssl_data = PURPLE_SSL_OPENSSL_DATA(gsc);
	ssize_t s;
	int ret;

	s = SSL_read(openssl_data->ssl, data, len);
	if (s <= 0) {
		ret = SSL_get_error(openssl_data->ssl, s);

		if (ret == SSL_ERROR_WANT_READ || ret == SSL_ERROR_WANT_WRITE) {
			errno = EAGAIN;
			return (-1);
		}

		purple_debug_error("openssl", "receive failed: %zi\n", s);
		s = 0;
	}

	return (s);
}

static size_t
ssl_openssl_write(PurpleSslConnection *gsc, const void *data, size_t len)
{
	PurpleSslOpensslData *openssl_data = PURPLE_SSL_OPENSSL_DATA(gsc);
	ssize_t s = 0;
	int ret;

	if (openssl_data == NULL)
		return (0);

	s = SSL_write(openssl_data->ssl, data, len);
	if (s <= 0) {
		ret = SSL_get_error(openssl_data->ssl, s);

		if (ret == SSL_ERROR_WANT_READ || ret == SSL_ERROR_WANT_WRITE) {
			errno = EAGAIN;
			return (-1);
		}

		purple_debug_error("openssl", "send failed: %zi\n", s);
		s = 0;
	}

	return (s);
}

static GList *
ssl_openssl_peer_certs(PurpleSslConnection *gsc)
{
	return (NULL);
}

static PurpleSslOps ssl_ops = {
	ssl_openssl_init,
	ssl_openssl_uninit,
	ssl_openssl_connect,
	ssl_openssl_close,
	ssl_openssl_read,
	ssl_openssl_write,
	ssl_openssl_peer_certs,

	/* padding */
	NULL,
	NULL,
	NULL
};

static gboolean
plugin_load(PurplePlugin *plugin)
{
	if (!purple_ssl_get_ops())
		purple_ssl_set_ops(&ssl_ops);

	return (TRUE);
}

static gboolean
plugin_unload(PurplePlugin *plugin)
{
	if (purple_ssl_get_ops() == &ssl_ops)
		purple_ssl_set_ops(NULL);

	return (TRUE);
}

static PurplePluginInfo info = {
	PURPLE_PLUGIN_MAGIC,
	PURPLE_MAJOR_VERSION,
	PURPLE_MINOR_VERSION,
	PURPLE_PLUGIN_STANDARD,				/* type */
	NULL,						/* ui_requirement */
	PURPLE_PLUGIN_FLAG_INVISIBLE,			/* flags */
	NULL,						/* dependencies */
	PURPLE_PRIORITY_DEFAULT,				/* priority */

	SSL_OPENSSL_PLUGIN_ID,				/* id */
	N_("OpenSSL"),					/* name */
	DISPLAY_VERSION,				/* version */

	N_("Provides SSL support through OpenSSL."),	/* description */
	N_("Provides SSL support through OpenSSL."),
	"OpenSSL",
	NULL,						/* homepage */

	plugin_load,					/* load */
	plugin_unload,					/* unload */
	NULL,						/* destroy */

	NULL,						/* ui_info */
	NULL,						/* extra_info */
	NULL,						/* prefs_info */
	NULL,						/* actions */

	/* padding */
	NULL,
	NULL,
	NULL,
	NULL
};

static void
init_plugin(PurplePlugin *plugin)
{
}

PURPLE_INIT_PLUGIN(ssl_openssl, init_plugin, info)
