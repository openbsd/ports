# $OpenBSD: Makefile,v 1.2 2010/09/09 17:58:06 jasper Exp $

COMMENT=	documentation generation tool for Lua

DISTNAME=	luadoc-3.0.1
CATEGORIES=	devel

HOMEPAGE=	http://luadoc.luaforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=	lang/lua

MASTER_SITES=	http://luaforge.net/frs/download.php/3185/

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/luadoc.lua.in ${PREFIX}/bin/luadoc.lua
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/luadoc/
	${INSTALL_DATA} ${WRKSRC}/doc/us/examples/lfs/lfs.luadoc \
		${MODLUA_DATADIR}/luadoc/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luadoc/
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.{html,png,vsd} \
		${PREFIX}/share/doc/luadoc/

.include <bsd.port.mk>
