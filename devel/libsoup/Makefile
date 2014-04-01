# $OpenBSD: Makefile,v 1.90 2014/04/01 15:31:45 jasper Exp $

COMMENT =		SOAP implementation in C

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.46.0

SHARED_LIBS +=  soup-2.4             8.0      # 8.0
SHARED_LIBS +=  soup-gnome-2.4       8.0      # 8.0

API_VERSION =		2.4
SUBST_VARS =		API_VERSION

CATEGORIES =		devel www

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += xml2 z ffi pthread sqlite3

MODULES =		devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS = 	gobject-introspection
MODPY_ADJ_FILES =	libsoup/tld-parser.py
MODPY_RUNDEP =		No

BUILD_DEPENDS =		net/glib2-networking
RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		devel/glib2 \
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
.endif

.include <bsd.port.mk>
