# $OpenBSD: Makefile,v 1.21 2011/11/13 11:51:54 naddy Exp $

COMMENT=	move your mail box to another location

DISTNAME=	movemail-1.0
REVISION=	2
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
