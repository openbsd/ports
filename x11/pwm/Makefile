# $OpenBSD: Makefile,v 1.29 2019/11/09 17:40:42 bket Exp $

COMMENT=		lightweight window manager with emphasis on usability

DISTNAME=		pwm-20070720
CATEGORIES=		x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		https://tuomov.iki.fi/software/
MASTER_SITES=		${HOMEPAGE}dl/

# Artistic or GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 c m

NO_TEST=		Yes

MAKE_ENV=		CC='${CC}' SYSCONFDIR='${SYSCONFDIR}'

.include <bsd.port.mk>
