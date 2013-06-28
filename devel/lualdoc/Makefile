# $OpenBSD: Makefile,v 1.3 2013/06/28 12:44:53 dcoppa Exp $

COMMENT =	LuaDoc-compatible documentation generation system

VER =		1.3.13
DISTNAME =	LDoc-${VER}
PKGNAME =	lualdoc-${VER}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	https://github.com/stevedonovan/LDoc/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

MODULES =	lang/lua

MASTER_SITES =	${HOMEPAGE}archive/${VER}.tar.gz?bleh=/

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
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${BINMODE} \
		-c ${WRKSRC}/ldoc.lua ${PREFIX}/bin/ldoc${MODLUA_DEP_VERSION}

.include <bsd.port.mk>
