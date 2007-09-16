# $OpenBSD: Makefile,v 1.16 2007/09/16 00:17:05 merdely Exp $

COMMENT=	move your mail box to another location

DISTNAME=	movemail-1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	
FAKE_FLAGS=	PREFIX=${PREFIX} MANDIR=${PREFIX}/man/cat

.include <bsd.port.mk>
