# $OpenBSD: Makefile,v 1.1.1.1 2006/05/04 22:53:57 pedro Exp $

COMMENT=	"gd binding for the lua language"

V=		2.0.33r1
PKGNAME=	luagd-$(V)
DISTNAME=	lua-gd-$(V)
CATEGORIES=	graphics

HOMEPAGE=	http://lua-gd.luaforge.net/
MASTER_SITES=	http://luaforge.net/frs/download.php/1015/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	freetype fontconfig iconv m z
LIB_DEPENDS=	lua.5,lualib.5::lang/lua jpeg.62::graphics/jpeg \
		png.2::graphics/png gd.20.33::graphics/gd

NO_REGRESS=	Yes
USE_X11=	Yes

post-extract:
	@sed -e "s:@gdpath@:${PREFIX}/lua/luagd/?.lua:g" \
	     -e "s:@gdcpath@:${PREFIX}/lua/luagd/?.so:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-build:
	$(CC) $(CFLAGS) -DGD_JPEG -DGD_FONTCONFIG -DGD_FREETYPE -DGD_PNG\
	-DGD_GIF -fPIC -I$(LOCALBASE)/include -L$(LOCALBASE)/lib\
	-L$(X11BASE)/lib -shared $(WRKDIST)/luagd.c -o ${WRKDIST}/core.so\
	-llua -llualib -lm -ljpeg -lfontconfig -lfreetype -lpng -lz -liconv\
	-lgd

LUAGDDIR=	$(PREFIX)/lua/luagd

do-install:
	${INSTALL_DATA_DIR} ${LUAGDDIR}
	${INSTALL_DATA_DIR} ${LUAGDDIR}/gd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luagd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luagd
	${INSTALL_DATA} ${FILESDIR}/gd.lua ${LUAGDDIR}
	${INSTALL_DATA} ${WRKSRC}/core.so ${LUAGDDIR}/gd
	${INSTALL_DATA} ${WRKSRC}/init.lua ${LUAGDDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luagd
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/luagd

.include <bsd.port.mk>
