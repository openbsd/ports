# $OpenBSD: Makefile,v 1.9 2010/06/18 18:08:56 jasper Exp $

COMMENT=	gd binding for the lua language

V=		2.0.33r2
PKGNAME=	luagd-$(V)p3
DISTNAME=	lua-gd-$(V)
CATEGORIES=	graphics

HOMEPAGE=	http://lua-gd.luaforge.net/
MASTER_SITES=	http://luaforge.net/frs/download.php/1592/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
WANTLIB=	freetype fontconfig iconv z
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg png.>=2::graphics/png \
		gd.>=20.33::graphics/gd

NO_REGRESS=	Yes
USE_X11=	Yes

do-build:
	$(CC) $(CFLAGS) -DGD_JPEG -DGD_FONTCONFIG -DGD_FREETYPE -DGD_PNG\
	-DGD_GIF -fPIC -I$(LOCALBASE)/include -shared -L$(LOCALBASE)/lib\
	-L$(X11BASE)/lib $(WRKDIST)/luagd.c -o ${WRKDIST}/core.so -ljpeg\
	-lfontconfig -lfreetype -lpng -lz -liconv -lgd

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_LIBDIR}/gd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luagd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luagd
	${INSTALL_DATA} ${FILESDIR}/gd.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/core.so ${MODLUA_LIBDIR}/gd
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luagd
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/luagd

.include <bsd.port.mk>
