# $OpenBSD: Makefile,v 1.19 2011/06/21 20:17:54 naddy Exp $

COMMENT=	USB developer utilities

DISTNAME=	usbutil-0.5
REVISION=	0
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.augustsson.net/pub/netbsd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/usbgen.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
