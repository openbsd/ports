# $OpenBSD: Makefile,v 1.14 2010/10/18 18:00:19 espie Exp $

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
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
