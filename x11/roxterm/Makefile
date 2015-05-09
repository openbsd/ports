# $OpenBSD: Makefile,v 1.40 2015/05/09 09:00:43 jasper Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-2.9.7
CATEGORIES=		x11

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}
EXTRACT_SUFX=		.tar.bz2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m ncurses pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs vte xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		devel/vte \
			x11/dbus-glib

BUILD_DEPENDS=		sysutils/py-lockfile \
			textproc/docbook-xsl \
			textproc/xmlto

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# XXX: Not ported to vte-2.91 yet, so keep using gtk2/vte-0.28
CONFIGURE_ARGS+=	--disable-gtk3 \
			--destdir="${DESTDIR}" \
			--mandir="${PREFIX}/man"

NO_TEST=		Yes

do-configure:
	${MODPY_BIN} ${WRKSRC}/mscript.py configure ${CONFIGURE_ARGS}

do-build:
	${MODPY_BIN} ${WRKSRC}/mscript.py build

do-install:
	${MODPY_BIN} ${WRKSRC}/mscript.py install

.include <bsd.port.mk>
