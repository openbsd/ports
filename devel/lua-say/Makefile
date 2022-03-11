COMMENT=	lua string hashing/indexing library
CATEGORIES=	devel

GH_ACCOUNT=	Olivine-Labs
GH_PROJECT=	say
GH_TAGNAME=	v1.3-1
REVISION=	0

PKGNAME =	lua-say-1.3.1

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

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
