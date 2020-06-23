# $OpenBSD: Makefile,v 1.23 2020/06/23 11:08:26 gsoares Exp $

COMMENT=	lua binding to OpenSSL to provide TLS/SSL communication

GH_ACCOUNT=	brunoos
GH_PROJECT=	luasec
GH_TAGNAME=	v0.9

CATEGORIES=	security

HOMEPAGE=	https://github.com/brunoos/luasec/wiki

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	crypto ssl

MODULES=	lang/lua
MODLUA_RUN_DEPENDS+=	net/luasocket

FLAVORS=	lua52 lua53
FLAVOR?=

MAKE_ENV+=	INC_PATH="-I${MODLUA_INCL_DIR}" SAVECFLAGS="${CFLAGS}" LD="${CC}"

NO_TEST=	Yes

ALL_TARGET=	bsd

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} \
		${MODLUA_DATADIR}/ssl ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ssl.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ssl.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/https.lua ${MODLUA_DATADIR}/ssl
	cd ${WRKSRC}/samples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MODLUA_EXAMPLEDIR}/{} \;

.include <bsd.port.mk>
