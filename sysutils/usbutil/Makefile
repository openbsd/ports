# $OpenBSD: Makefile,v 1.17 2010/10/19 07:43:04 espie Exp $

COMMENT=	USB developer utilities

DISTNAME=	usbutil-0.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.augustsson.net/pub/netbsd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_GROFF =	Yes
NO_REGRESS=	Yes

INSTALL_TARGET=	man install

post-install:
	${INSTALL_MAN} ${WRKSRC}/usbgen.0 ${PREFIX}/man/cat8

.include <bsd.port.mk>
