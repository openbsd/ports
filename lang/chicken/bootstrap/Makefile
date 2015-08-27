# $OpenBSD: Makefile,v 1.2 2015/08/27 22:40:33 juanfra Exp $

PKGNAME=	chicken-bootstrap-${V}

NO_TEST=	Yes

ALL_TARGET=	boot-chicken

do-install:
	${INSTALL_PROGRAM} "${WRKSRC}/chicken-boot" "${PREFIX}/libexec/chicken-bootstrap"

.include <bsd.port.mk>
