# $OpenBSD: Makefile,v 1.23 2013/03/11 11:46:15 espie Exp $

COMMENT=		lightweight window manager with emphasis on usability

DISTNAME=		pwm-20060517
REVISION=		1
CATEGORIES=		x11

HOMEPAGE=		http://iki.fi/tuomov/
MASTER_SITES=		${HOMEPAGE}dl/

MAINTAINER=		Gregory Steuck <greg-openbsd-pwm@nest.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m

USE_GROFF =		Yes
NO_TEST=		Yes

MAKE_ENV=		CC='${CC}' SYSCONFDIR='${SYSCONFDIR}'

.include <bsd.port.mk>
