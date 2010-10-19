# $OpenBSD: Makefile,v 1.3 2010/10/19 08:13:59 espie Exp $

COMMENT=	simple digital clock

DISTNAME=	sclock-0.6
CATEGORIES=	x11

HOMEPAGE=	http://spootnik.org/sclock/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

USE_GROFF =	Yes
NO_REGRESS=	Yes
WANTLIB=	c X11

.include <bsd.port.mk>
