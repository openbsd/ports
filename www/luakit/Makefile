# $OpenBSD: Makefile,v 1.9 2013/04/13 09:33:29 ajacoutot Exp $

BROKEN-powerpc=	help2man: can't get `--help' info from ./luakit

COMMENT=	fast, small, webkit based browser written in lua

VERSION=	2012.09.13.rc1

REVISION=	5

DISTNAME=	luakit-${VERSION}

CATEGORIES=	www 

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE=	http://luakit.org

MASTER_SITES= http://deftly.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 javascriptcoregtk-1.0 luajit-5.1
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs soup-2.4 sqlite3 unique-1.0 webkitgtk-1.0
WANTLIB += xcb xcb-render xcb-shm z

MODULES = lang/lua \
		devel/gettext

BUILD_DEPENDS=	devel/help2man

RUN_DEPENDS=	devel/luafs

LIB_DEPENDS=	lang/luajit \
		devel/libunique \
		www/webkit

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MAKE_ENV+= USE_LUAJIT=1 USE_UNIQUE=1 INSTALLDIR=${PREFIX} \
	MANDIR=${PREFIX}

PIXDIR = ${PREFIX}/share/pixmaps
JQDIR = ${PREFIX}/share/luakit/lib


pre-configure: 
	perl -pi -e 's,/usr/bin/env lua,${MODLUA_BIN},g' \
		${WRKSRC}/build-utils/gentokens.lua
	perl -pi -e 's,/usr/bin/env lua,${MODLUA_BIN},g' \
		${WRKSRC}/lib/markdown.lua

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/luakit ${PREFIX}/bin/luakit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luakit/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luakit/
	${INSTALL_DATA_DIR} ${PIXDIR}
	${INSTALL_DATA_DIR} ${JQDIR}
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	for file in README.md AUTHORS COPYING COPYING.GPLv3; do \
		${INSTALL_DATA} ${WRKSRC}/$$file ${PREFIX}/share/doc/luakit/; \
	done
	${INSTALL_DATA} ${WRKSRC}/extras/luakit.png ${PIXDIR}
	${INSTALL_MAN} ${WRKSRC}/luakit.1 ${PREFIX}/man/man1/luakit.1
	cp -R ${WRKSRC}/lib/*.lua ${MODLUA_DATADIR}
	cp -R ${WRKSRC}/lib/lousy ${MODLUA_DATADIR}
	cp -R ${WRKSRC}/lib/*.js ${JQDIR}
	cp -R ${WRKSRC}/config/*.lua ${PREFIX}/share/examples/luakit/

.include <bsd.port.mk>
