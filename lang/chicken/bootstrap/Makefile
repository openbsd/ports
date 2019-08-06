# $OpenBSD: Makefile,v 1.3 2019/08/06 18:19:51 juanfra Exp $

PKGNAME=	chicken-bootstrap-${V}

NO_TEST=	Yes

ALL_TARGET=	boot-chicken

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/chicken-boot ${PREFIX}/libexec/chicken-bootstrap

.include <bsd.port.mk>
