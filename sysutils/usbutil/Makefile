# $OpenBSD: Makefile,v 1.21 2019/07/12 20:49:54 sthen Exp $

COMMENT=	USB developer utilities

DISTNAME=	usbutil-0.5
REVISION=	0
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.augustsson.net/pub/netbsd/

PERMIT_PACKAGE=	Yes
WANTLIB=		c

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/usbgen.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
