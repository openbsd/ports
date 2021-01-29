# $OpenBSD: Makefile,v 1.22 2021/01/29 11:45:51 sthen Exp $

COMMENT=	USB developer utilities

DISTNAME=	usbutil-0.5
REVISION=	1
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.augustsson.net/pub/netbsd/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/usbgen.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
