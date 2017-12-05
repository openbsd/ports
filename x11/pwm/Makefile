# $OpenBSD: Makefile,v 1.26 2017/12/05 16:25:46 espie Exp $

COMMENT=		lightweight window manager with emphasis on usability

DISTNAME=		pwm-20060517
REVISION=		2
CATEGORIES=		x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://iki.fi/tuomov/
MASTER_SITES=		${HOMEPAGE}dl/

MAINTAINER=		Gregory Steuck <greg@nest.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m

NO_TEST=		Yes

MAKE_ENV=		CC='${CC}' SYSCONFDIR='${SYSCONFDIR}'

.include <bsd.port.mk>
