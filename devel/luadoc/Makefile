# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:41 sthen Exp $

COMMENT=	documentation generation tool for Lua

DISTNAME=	luadoc-3.0.1
REVISION=	4

CATEGORIES=	devel

HOMEPAGE=	http://luadoc.luaforge.net/

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES=	http://luaforge.net/frs/download.php/3185/

MODULES=	lang/lua
MODLUA_RUN_DEPENDS=	devel/luafs

FLAVORS=	lua52
FLAVOR?=

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH =      *

LUADOC_DIR =	${MODLUA_DATADIR}/luadoc
DOCLET_DIR =	${MODLUA_DATADIR}/luadoc/doclet
TAGLET_DIR =	${MODLUA_DATADIR}/luadoc/taglet
HTML_DIR =	${DOCLET_DIR}/html
STANDARD_DIR =	${TAGLET_DIR}/standard

pre-configure:
	perl -pi -e 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/src/luadoc.lua.in

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/luadoc.lua.in \
		${PREFIX}/bin/luadoc${MODLUA_DEP_VERSION}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA_DIR} ${DOCLET_DIR} ${TAGLET_DIR}
	${INSTALL_DATA_DIR} ${HTML_DIR} ${STANDARD_DIR}
	${INSTALL_DATA} ${WRKSRC}/src/luadoc/*.lua ${LUADOC_DIR}/
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
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.{html,png,vsd} ${MODLUA_DOCDIR}

.include <bsd.port.mk>
