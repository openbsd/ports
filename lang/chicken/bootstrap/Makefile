# $OpenBSD: Makefile,v 1.1 2014/03/09 20:17:01 jasper Exp $

PKGNAME=	chicken-bootstrap-${V}

NO_TEST=	Yes

ALL_TARGET=	boot-chicken

do-install:
	${INSTALL_PROGRAM} "${WRKSRC}/chicken-boot" "${PREFIX}/libexec/chicken-bootstrap"


.include <bsd.port.mk>
