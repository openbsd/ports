# $OpenBSD: Makefile,v 1.4 2010/10/19 08:14:00 espie Exp $

COMMENT=		simulation of water waves on the X Window desktop

DISTNAME=		xdesktopwaves-1.3
REVISION=		1
CATEGORIES=		x11

MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>

HOMEPAGE=		http://xdesktopwaves.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xdesktopwaves/}

WANTLIB=		X11 Xext c m
USE_X11=		Yes
USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
