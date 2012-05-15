# $OpenBSD: Makefile,v 1.5 2012/05/15 15:16:29 jasper Exp $

COMMENT=	documentation generation tool for Lua

DISTNAME=	luadoc-3.0.1
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://luadoc.luaforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=	lang/lua

RUN_DEPENDS=	devel/luafs

MASTER_SITES=	http://luaforge.net/frs/download.php/3185/

NO_BUILD=	Yes
NO_REGRESS=	Yes

LUADOC_DIR =	${MODLUA_DATADIR}/luadoc
DOCLET_DIR =	${MODLUA_DOCDIR}/doclet
HTML_DIR =	${DOCLET_DIR}/html
TAGLET_DIR =	${MODLUA_DOCDIR}/taglet
STANDARD_DIR =	${TAGLET_DIR}/standard

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/luadoc.lua.in ${PREFIX}/bin/luadoc
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA_DIR} ${DOCLET_DIR}
	${INSTALL_DATA_DIR} ${HTML_DIR}
	${INSTALL_DATA_DIR} ${TAGLET_DIR}
	${INSTALL_DATA_DIR} ${STANDARD_DIR}
	${INSTALL_DATA} ${WRKSRC}/src/luadoc/*.lua ${MODLUA_DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/src/luadoc/doclet/*.lua \
		${DOCLET_DIR}/
	${INSTALL_DATA} ${WRKSRC}/src/luadoc/doclet/html/*.{css,lp} \
		${HTML_DIR}/
	${INSTALL_DATA} ${WRKSRC}/src/luadoc/taglet/standard.lua \
		${TAGLET_DIR}/
	${INSTALL_DATA} ${WRKSRC}/src/luadoc/taglet/standard/tags.lua \
		${STANDARD_DIR}/
	${INSTALL_DATA} ${WRKSRC}/doc/us/examples/lfs/lfs.luadoc \
		${MODLUA_DOCDIR}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luadoc/
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.{html,png,vsd} \
		${PREFIX}/share/doc/luadoc/

.include <bsd.port.mk>
