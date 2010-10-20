# $OpenBSD: Makefile,v 1.18 2010/10/20 15:36:46 naddy Exp $

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

ALL_TARGET=	all man

post-install:
	${INSTALL_MAN} ${WRKSRC}/usbgen.0 ${PREFIX}/man/cat8

.include <bsd.port.mk>
