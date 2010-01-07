# $OpenBSD: Makefile,v 1.13 2010/01/07 09:38:20 jakemsr Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xpm c m pthread-stubs sndio stdc++ xcb

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
