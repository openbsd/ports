# $OpenBSD: Makefile,v 1.1.1.1 2012/10/28 23:43:00 abieber Exp $
#
COMMENT=	fast, small, webkit based browser written in lua

VERSION=	2012.09.13.rc1

DISTNAME=	luakit-${VERSION}

CATEGORIES=	www 

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE=	http://luakit.org

MASTER_SITES= http://deftly.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender c expat fontconfig freetype lua5.1 m
WANTLIB += pixman-1 pthread pthread-stubs sqlite3 xcb xcb-render
WANTLIB += xcb-shm z

MODULES = lang/lua

BUILD_DEPENDS=	devel/help2man \
		lang/luajit \
		www/webkit,gtk3

RUN_DEPENDS=	devel/luafs \
		lang/luajit

MAKE_ENV+= USE_LUAJIT=1 USE_UNIQUE=0 INSTALLDIR=${PREFIX} \
	MANDIR=${PREFIX}

PIXDIR = ${PREFIX}/share/pixmaps
JQDIR = ${PREFIX}/share/luakit/lib

DOCS = README.md AUTHORS COPYING COPYING.GPLv3

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
	for file in ${DOCS}; do \
		${INSTALL_DATA} ${WRKSRC}/$$file ${PREFIX}/share/doc/luakit/; \
	done
	${INSTALL_DATA} ${WRKSRC}/extras/luakit.png ${PIXDIR}
	${INSTALL_MAN} ${WRKSRC}/luakit.1 ${PREFIX}/man/man1/luakit.1
	cp -R ${WRKSRC}/lib/*.lua ${MODLUA_DATADIR}
	cp -R ${WRKSRC}/lib/lousy ${MODLUA_DATADIR}
	cp -R ${WRKSRC}/lib/*.js ${JQDIR}
	cp -R ${WRKSRC}/config/*.lua ${PREFIX}/share/examples/luakit/

.include <bsd.port.mk>
