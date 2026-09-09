COMMENT =		GTK+ IRC Client
PSL_COMMIT =		d91e55ea128af6218897d3b3723b28af7138c3d6
DIST_TUPLE +=		github ZoiteChat zoitechat v2.19.0 .
DIST_TUPLE +=		github publicsuffix list ${PSL_COMMIT} \
			src/common/publicsuffix
CATEGORIES =		net x11

HOMEPAGE =		https://zoitechat.org/

MAINTAINER =		izzy Meyer <izder456@disroot.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} X11 archive c cairo canberra crypto
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl lua5.4 pango-1.0 pangocairo-1.0 perl secret-1
WANTLIB += ssl

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/meson \
			lang/python \
			textproc/intltool

CONFIGURE_ARGS +=	-Dwith-sysinfo=false \
			-Dappindicator=disabled

BUILD_DEPENDS =		devel/iso-codes \
			devel/py-cffi

LIB_DEPENDS =		audio/libcanberra \
			archivers/libarchive \
			devel/gettext,-runtime \
			lang/lua/5.4 \
			x11/gtk+3 \
			x11/gnome/libsecret \
			${MODPY_LIB_DEPENDS}

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+4,-guic

TEST_DEPENDS =		archivers/gtar

TEST_ENV +=		AS_VALIDATE_NONET=1

pre-test:
	ln -fs ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
