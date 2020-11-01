# $OpenBSD: Makefile,v 1.49 2020/11/01 13:24:10 jasper Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-3.3.2
CATEGORIES=		x11

HOMEPAGE=		http://roxterm.sourceforge.net/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz hogweed iconv icudata icuuc
WANTLIB += idn2 intl m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-8 pixman-1 png tasn1 unistring
WANTLIB += vte-2.91 xcb xcb-render xcb-shm z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=		devel/vte3 \
			x11/dbus-glib

BUILD_DEPENDS=		graphics/ImageMagick \
			sysutils/py-lockfile${MODPY_FLAVOR} \
			textproc/docbook-xsl \
			textproc/xmlto

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# XXX: translations require unported po4a-gettextize
CONFIGURE_ARGS +=	--disable-translations \
			--destdir="${DESTDIR}" \
			--mandir="${PREFIX}/man" \
			CC="${CC}" \
			CXX="${CXX}"

NO_TEST=		Yes

do-configure:
	${MODPY_BIN} ${WRKSRC}/mscript.py configure ${CONFIGURE_ARGS}

do-build:
	${MODPY_BIN} ${WRKSRC}/mscript.py build

do-install:
	${MODPY_BIN} ${WRKSRC}/mscript.py install

.include <bsd.port.mk>
