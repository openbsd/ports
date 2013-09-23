# $OpenBSD: Makefile,v 1.5 2013/09/23 14:11:12 dcoppa Exp $

COMMENT =	LuaDoc-compatible documentation generation system

VER =		1.4.0
DISTNAME =	LDoc-${VER}
PKGNAME =	lualdoc-${VER}
CATEGORIES =	devel

HOMEPAGE =	http://stevedonovan.github.io/ldoc/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

MODULES =	lang/lua

MASTER_SITES =	https://github.com/stevedonovan/ldoc/archive/${VER}.tar.gz?bleh=/

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
