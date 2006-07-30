# $OpenBSD: Makefile,v 1.2 2006/07/30 04:46:42 pedro Exp $

COMMENT=	"gd binding for the lua language"

V=		2.0.33r2
PKGNAME=	luagd-$(V)
DISTNAME=	lua-gd-$(V)
CATEGORIES=	graphics

HOMEPAGE=	http://lua-gd.luaforge.net/
MASTER_SITES=	http://luaforge.net/frs/download.php/1592/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	freetype fontconfig iconv m z
LIB_DEPENDS=	jpeg.62::graphics/jpeg png.2::graphics/png gd.20.33::graphics/gd
BUILD_DEPENDS=	:lua->=5.1:lang/lua

NO_REGRESS=	Yes
USE_X11=	Yes

do-build:
	$(CC) $(CFLAGS) -DGD_JPEG -DGD_FONTCONFIG -DGD_FREETYPE -DGD_PNG\
	-DGD_GIF -fPIC -I$(LOCALBASE)/include -shared -L$(LOCALBASE)/lib\
	-llua -lm -L$(X11BASE)/lib $(WRKDIST)/luagd.c -o ${WRKDIST}/core.so\
	-ljpeg -lfontconfig -lfreetype -lpng -lz -liconv -lgd

SHAREDIR=	${PREFIX}/share/lua/5.1
LIBDIR=		${PREFIX}/lib/lua/5.1

do-install:
	${INSTALL_DATA_DIR} ${SHAREDIR} ${LIBDIR}/gd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luagd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luagd
	${INSTALL_DATA} ${FILESDIR}/gd.lua ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/core.so ${LIBDIR}/gd
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luagd
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/luagd

.include <bsd.port.mk>
