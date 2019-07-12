# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:03 sthen Exp $

COMMENT=	gd binding for the lua language

V=		2.0.33r2
PKGNAME=	luagd-$(V)
DISTNAME=	lua-gd-$(V)
REVISION=	9
CATEGORIES=	graphics

HOMEPAGE=	http://lua-gd.luaforge.net/
MASTER_SITES=	http://luaforge.net/frs/download.php/1592/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua
WANTLIB=	freetype fontconfig z iconv jpeg>=62 png>=2 gd>=20.33
LIB_DEPENDS=	converters/libiconv graphics/jpeg graphics/png graphics/gd

NO_TEST=	Yes

do-build:
	$(CC) $(CFLAGS) -DGD_JPEG -DGD_FONTCONFIG -DGD_FREETYPE -DGD_PNG \
	-DGD_GIF -fPIC -I$(LOCALBASE)/include -shared -I${MODLUA_INCL_DIR} \
	-L$(LOCALBASE)/lib -L$(X11BASE)/lib $(WRKDIST)/luagd.c \
	-o ${WRKDIST}/core.so -ljpeg -lfontconfig -lfreetype -lpng -lz -liconv -lgd

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_LIBDIR}/gd
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${FILESDIR}/gd.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/core.so ${MODLUA_LIBDIR}/gd
	${INSTALL_DATA} ${WRKSRC}/doc/* ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/demos/* ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
