# $OpenBSD: Makefile,v 1.6 2013/11/12 15:00:25 sthen Exp $

COMMENT =	LuaDoc-compatible documentation generation system

GH_VER =	1.4.0
DISTNAME =	LDoc-${GH_VER}
PKGNAME =	lualdoc-${GH_VER}
CATEGORIES =	devel

HOMEPAGE =	http://stevedonovan.github.io/ldoc/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

MODULES =	lang/lua

MASTER_SITES =	https://github.com/stevedonovan/ldoc/archive/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

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
