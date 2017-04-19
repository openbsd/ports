# $OpenBSD: Makefile,v 1.1.1.1 2017/04/19 12:23:20 sthen Exp $

COMMENT =	fuzzy select anything

V =		1.6.0
DISTNAME =	pick-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/calleerlandsson/pick

MAINTAINER =	Anton Lindqvist <anton.lindqvist@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/calleerlandsson/pick/releases/download/v${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
