# $OpenBSD: Makefile,v 1.4 2021/05/13 13:34:49 jasper Exp $

BROKEN-powerpc64 = unrecoverable segmentation violation - execution terminated

PKGNAME=	chicken-bootstrap-${V}

NO_TEST=	Yes

ALL_TARGET=	boot-chicken

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/chicken-boot ${PREFIX}/libexec/chicken-bootstrap

.include <bsd.port.mk>
