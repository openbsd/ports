# $OpenBSD: Makefile,v 1.19 2016/10/11 18:36:13 jca Exp $

COMMENT=	lua binding to OpenSSL to provide TLS/SSL communication

VERSION=	0.6
REVISION=	0
DISTNAME=	luasec-${VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/brunoos/luasec/wiki

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	crypto ssl

MASTER_SITES=	https://github.com/brunoos/luasec/archive/

MODULES=	lang/lua
MODLUA_RUN_DEPENDS+=	net/luasocket

MAKE_ENV+=	INC_PATH="-I${MODLUA_INCL_DIR}" SAVECFLAGS="${CFLAGS}" LD="${CC}"

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/luasec-luasec-${VERSION}

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
