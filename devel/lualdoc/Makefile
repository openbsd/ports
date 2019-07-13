# $OpenBSD: Makefile,v 1.20 2019/07/13 22:12:09 naddy Exp $

COMMENT =	LuaDoc-compatible documentation generation system

GH_ACCOUNT =	stevedonovan
GH_PROJECT =	LDoc
GH_TAGNAME =	1.4.6
PKGNAME =	lualdoc-${GH_TAGNAME}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://stevedonovan.github.io/ldoc/

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/lua

MODLUA_RUN_DEPENDS =	devel/lua-penlight
MODLUA_SA =	Yes
MODLUA_VERSION = 5.2

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/ldoc/builtin
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/ldoc/html
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${SUBST_CMD} ${WRKSRC}/ldoc/markdown.lua
	${INSTALL_DATA} ${WRKSRC}/ldoc/*.{ld,lua} ${MODLUA_DATADIR}/ldoc/
	${INSTALL_DATA} ${WRKSRC}/ldoc/builtin/*.lua \
		${MODLUA_DATADIR}/ldoc/builtin/
	${INSTALL_DATA} ${WRKSRC}/ldoc/html/*.lua \
		${MODLUA_DATADIR}/ldoc/html/
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.md ${MODLUA_DOCDIR}
	${SUBST_PROGRAM} ${WRKSRC}/ldoc.lua ${PREFIX}/bin/ldoc

.include <bsd.port.mk>
