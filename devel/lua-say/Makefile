# $OpenBSD: Makefile,v 1.1.1.1 2020/11/12 09:33:42 semarie Exp $

COMMENT=	lua string hashing/indexing library
CATEGORIES=	devel

GH_ACCOUNT=	Olivine-Labs
GH_PROJECT=	say
GH_TAGNAME=	v1.3-1

PKGNAME =	lua-say-1.3.1

MAINTAINER=	sh+ports@codevoid.de

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} \
		${MODLUA_DATADIR}/say
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}/say/

.include <bsd.port.mk>
