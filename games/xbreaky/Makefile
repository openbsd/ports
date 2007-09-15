# $OpenBSD: Makefile,v 1.11 2007/09/15 18:01:03 simon Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xpm c m ossaudio stdc++

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
