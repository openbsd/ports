# $OpenBSD: Makefile,v 1.115 2020/05/14 15:31:15 jasper Exp $

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.14.0

# see BACKEND_DIR in config.h
API_V=			46

SHARED_LIBS +=  folks                5.6      # 25.20.0
SHARED_LIBS +=  folks-dummy          0.0      # 25.20.0
SHARED_LIBS +=  folks-telepathy      5.3      # 25.20.0
SHARED_LIBS +=  folks-eds            1.3      # 25.20.0

SUBST_VARS=		API_V

HOMEPAGE=		https://wiki.gnome.org/Projects/Folks

WANTLIB += c ebook-1.2 ebook-contacts-1.2 edataserver-1.2 gee-0.8
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl readline
WANTLIB += telepathy-glib xml2 ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	tests/tools/manager-file.py

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libgee \
			net/telepathy/telepathy-glib

# needed at runtime by the telepathy backend (AccountManager)
RUN_DEPENDS=		net/telepathy/telepathy-mission-control

TEST_DEPENDS=		${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE =	meson

# requires libofono (not ported)
CONFIGURE_ARGS += 	-Dofono_backend=false

# no Bluez stack on OpenBSD
CONFIGURE_ARGS +=	-Dbluez_backend=false

.include <bsd.port.mk>
