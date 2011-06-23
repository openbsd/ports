# $OpenBSD: Makefile,v 1.4 2011/06/23 22:50:30 naddy Exp $

COMMENT=	simple digital clock

DISTNAME=	sclock-0.6
REVISION=	0
CATEGORIES=	x11

HOMEPAGE=	http://spootnik.org/sclock/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes
WANTLIB=	c X11

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
