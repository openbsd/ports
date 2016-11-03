# $OpenBSD: Makefile,v 1.4 2016/11/03 07:39:03 jsg Exp $

COMMENT=	tool for linting and static analysis of Lua code
CATEGORIES=	devel

V=		0.16.3
DISTNAME=	luacheck-${V}

GH_ACCOUNT=	mpeterv
GH_PROJECT=	luacheck
GH_TAGNAME=	${V}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

BUILD_DEPENDS=	textproc/py-sphinx

# MIT
PERMIT_PACKAGE_CDROM=	Yes

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
