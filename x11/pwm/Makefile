# $OpenBSD: Makefile,v 1.12 2004/12/19 17:36:32 alek Exp $

COMMENT=		"lightweight window manager with emphasis on usability"

DISTNAME=		pwm-20030528
CATEGORIES=		x11

HOMEPAGE=		http://modeemi.cs.tut.fi/~tuomov/pwm/
MASTER_SITES=		http://modeemi.cs.tut.fi/~tuomov/dl/

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
