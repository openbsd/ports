# $OpenBSD: Makefile,v 1.123 2019/11/01 19:37:08 ajacoutot Exp $

COMMENT =		HTTP client/server library for GNOME

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.68.2

SHARED_LIBS += soup-2.4                  10.4 # 1.8.0
SHARED_LIBS += soup-gnome-2.4            8.1  # 1.8.0

API_VERSION =		2.4
SUBST_VARS =		API_VERSION

CATEGORIES =		devel www

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec gio-2.0 glib-2.0 gobject-2.0 intl psl sqlite3
WANTLIB += xml2 z

MODULES =		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS =	gobject-introspection vala
MODPY_RUNDEP =		No
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		archivers/brotli \
			databases/sqlite3 \
			devel/glib2 \
			net/libpsl \
			textproc/libxml

CONFIGURE_ARGS =	-Dgssapi=disabled \
			-Dntlm=disabled \
			-Dtests=false \
			-Dtls_check=false

.include <bsd.port.mk>
