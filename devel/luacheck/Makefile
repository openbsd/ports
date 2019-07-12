# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:41 sthen Exp $

COMMENT=	tool for linting and static analysis of Lua code
CATEGORIES=	devel

GH_ACCOUNT=	mpeterv
GH_PROJECT=	luacheck
GH_TAGNAME=	0.21.2

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

BUILD_DEPENDS=	textproc/py-sphinx

# MIT
PERMIT_PACKAGE=	Yes

NO_TEST=		Yes

MODULES=	lang/lua

pre-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/bin/luacheck.lua

do-build:
	${LOCALBASE}/bin/sphinx-build -N ${WRKSRC}/docsrc ${WRKSRC}/doc

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/luacheck
	${INSTALL_DATA} ${WRKSRC}/src/luacheck/*.lua ${MODLUA_DATADIR}/luacheck
	${INSTALL_SCRIPT} ${WRKSRC}/bin/luacheck.lua ${PREFIX}/bin/luacheck
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacheck
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/luacheck

.include <bsd.port.mk>
