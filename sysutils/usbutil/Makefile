# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:33 espie Exp $

COMMENT=	USB developer utilities

DISTNAME=	usbutil-0.5
REVISION=	0
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.augustsson.net/pub/netbsd/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/usbgen.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
