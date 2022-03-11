COMMENT=	assertion library for lua
CATEGORIES=	devel

GH_ACCOUNT=	Olivine-Labs
GH_PROJECT=	luassert
GH_TAGNAME=	v1.7.11
REVISION=	1

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

RUN_DEPENDS=	devel/lua-say

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} \
		${MODLUA_DATADIR}/luassert \
		${MODLUA_DATADIR}/luassert/formatters \
		${MODLUA_DATADIR}/luassert/languages \
		${MODLUA_DATADIR}/luassert/matchers
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}/luassert/
	${INSTALL_DATA} ${WRKSRC}/src/formatters/*.lua \
		${MODLUA_DATADIR}/luassert/formatters/
	${INSTALL_DATA} ${WRKSRC}/src/languages/*.lua \
		${MODLUA_DATADIR}/luassert/languages/
	${INSTALL_DATA} ${WRKSRC}/src/matchers/*.lua \
		${MODLUA_DATADIR}/luassert/matchers/
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${MODLUA_DOCDIR}/

.include <bsd.port.mk>
