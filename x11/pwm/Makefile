# $OpenBSD: Makefile,v 1.19 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=		lightweight window manager with emphasis on usability

DISTNAME=		pwm-20060517
REVISION=		1
CATEGORIES=		x11

HOMEPAGE=		http://iki.fi/tuomov/
MASTER_SITES=		${HOMEPAGE}dl/

MAINTAINER=		Gregory Steuck <greg-openbsd-pwm@nest.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m

USE_X11=		Yes
NO_REGRESS=		Yes

MAKE_ENV=		CC='${CC}' SYSCONFDIR='${SYSCONFDIR}'

.include <bsd.port.mk>
