# $OpenBSD: Makefile,v 1.103 2016/09/23 09:16:53 sthen Exp $

COMMENT =		HTTP client/server library for GNOME

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.54.1
REVISION =		0

SHARED_LIBS +=  soup-2.4             9.0      # 9.0
SHARED_LIBS +=  soup-gnome-2.4       8.0      # 9.0

API_VERSION =		2.4
SUBST_VARS =		API_VERSION

CATEGORIES =		devel www

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl lzma m pcre pthread sqlite3 xml2 z

MODULES =		lang/python \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala
MODPY_ADJ_FILES =	libsoup/tld-parser.py
MODPY_RUNDEP =		No

BUILD_DEPENDS =		net/glib2-networking
RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		databases/sqlite3 \
			devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-ntlm-auth=${LOCALBASE}/bin/ntlm_auth

PSEUDO_FLAVORS =	tests
FLAVOR ?=

.if ${FLAVOR:Mtests}
MODULES +=		lang/php
BUILD_DEPENDS +=	php-${MODPHP_VSPEC}-ap2:lang/php/${MODPHP_VERSION},ap2 \
			lang/php/${MODPHP_VERSION},-xmlrpc \
			net/curl \
			www/apache-httpd
CONFIGURE_ENV +=	ac_cv_prog_PHP=${MODPHP_BIN}
CONFIGURE_ARGS +=	--with-apache-httpd=${LOCALBASE}/sbin/httpd2 \
			--with-apache-module-dir="${LOCALBASE}/lib/apache2 ${MODPHP_LIBDIR}"
.else
CONFIGURE_ENV +=	ac_cv_prog_PHP= \
			ac_cv_path_APACHE_HTTPD= \
			ac_cv_path_CURL=
.endif

.include <bsd.port.mk>
