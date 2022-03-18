COMMENT =		HTTP client/server library for GNOME

GNOME_PROJECT =		libsoup
GNOME_VERSION =		3.0.5
PKGNAME=		libsoup3-${GNOME_VERSION}

SHARED_LIBS += soup-3.0                  0.1 # 0.0.5

API_VERSION =		3.0
SUBST_VARS =		API_VERSION

CATEGORIES =		devel www

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl nghttp2 psl sqlite3 z

MODULES =		devel/meson \
			x11/gnome

MODGNOME_TOOLS =	gobject-introspection vala

RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		archivers/brotli \
			databases/sqlite3 \
			devel/glib2 \
			net/libpsl \
			www/nghttp2

CONFIGURE_ARGS =	-Dgssapi=disabled \
			-Dntlm=disabled \
			-Dsysprof=disabled \
			-Dtls_check=false

# requires unported wstest and dependency on apache2, python quart, gnutls...
CONFIGURE_ARGS +=	-Dautobahn=disabled \
			-Dtests=false \
			-Dhttp2_tests=disabled \
			-Dpkcs11_tests=disabled

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
