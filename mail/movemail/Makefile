# $OpenBSD: Makefile,v 1.20 2011/06/23 22:50:27 naddy Exp $

COMMENT=	move your mail box to another location

DISTNAME=	movemail-1.0
REVISION =	1
CATEGORIES=	mail
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	
FAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
