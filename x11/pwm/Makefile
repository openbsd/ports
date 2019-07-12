# $OpenBSD: Makefile,v 1.28 2019/07/12 20:51:19 sthen Exp $

COMMENT=		lightweight window manager with emphasis on usability

DISTNAME=		pwm-20060517
REVISION=		3
CATEGORIES=		x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://iki.fi/tuomov/
MASTER_SITES=		${HOMEPAGE}dl/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 c m

NO_TEST=		Yes

MAKE_ENV=		CC='${CC}' SYSCONFDIR='${SYSCONFDIR}'

.include <bsd.port.mk>
