# $OpenBSD: Makefile,v 1.87 2013/11/12 07:37:24 ajacoutot Exp $

COMMENT =		SOAP implementation in C

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.44.2

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

MODGNOME_TOOLS = 	gi
MODPY_ADJ_FILES =	libsoup/tld-parser.py
MODPY_RUNDEP =		No

BUILD_DEPENDS =		net/glib2-networking \
			net/curl #needed to build tests
RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-ntlm-auth=${LOCALBASE}/bin/ntlm_auth

# checking Apache version... 1.3.29 (Unix) (ignoring)
# But this prevents needing apache2 for certain regress tests.
CONFIGURE_ARGS+=	--with-apache-httpd="/usr/sbin/httpd"

.include <bsd.port.mk>
