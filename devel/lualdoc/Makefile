# $OpenBSD: Makefile,v 1.11 2014/08/10 09:58:05 espie Exp $

COMMENT =	LuaDoc-compatible documentation generation system

GH_ACCOUNT =	stevedonovan
GH_PROJECT =	LDoc
GH_TAGNAME =	1.4.2
GH_COMMIT =	511dfe7df01f92da03c639c5f56495c0c31b6e2b
DISTNAME =	LDoc-${GH_TAGNAME}
PKGNAME =	lualdoc-${GH_TAGNAME}
CATEGORIES =	devel

HOMEPAGE =	http://stevedonovan.github.io/ldoc/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

MODULES =	lang/lua

MODLUA_RUN_DEPENDS =	devel/lua-penlight

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/ldoc/builtin
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/ldoc/html
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ldoc/*.{ld,lua} ${MODLUA_DATADIR}/ldoc/
	${INSTALL_DATA} ${WRKSRC}/ldoc/builtin/*.lua \
		${MODLUA_DATADIR}/ldoc/builtin/
	${INSTALL_DATA} ${WRKSRC}/ldoc/html/*.lua \
		${MODLUA_DATADIR}/ldoc/html/
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.md ${MODLUA_DOCDIR}
	${SUBST_PROGRAM} \
		${WRKSRC}/ldoc.lua ${PREFIX}/bin/ldoc${MODLUA_DEP_VERSION}

.include <bsd.port.mk>
