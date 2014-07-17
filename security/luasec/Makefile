# $OpenBSD: Makefile,v 1.15 2014/07/17 21:06:16 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	lua binding to OpenSSL to provide TLS/SSL communication
VERSION=	0.5
REVISION=	1
DISTNAME=	luasec-${VERSION}
CATEGORIES=	security
MASTER_SITES=	https://github.com/brunoos/luasec/archive/

HOMEPAGE=	https://github.com/brunoos/luasec/wiki

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua
NO_TEST=	Yes
MODLUA_RUN_DEPENDS+=	net/luasocket
WANTLIB+=	crypto ssl

MAKE_ENV+=	INC_PATH="-I${MODLUA_INCL_DIR}" SAVECFLAGS="${CFLAGS}" LD="${CC}"
ALL_TARGET=	bsd

WRKDIST=	${WRKDIR}/luasec-luasec-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ssl.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ssl.lua ${MODLUA_DATADIR}
	cd ${WRKSRC}/samples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MODLUA_EXAMPLEDIR}/{} \;

.include <bsd.port.mk>
