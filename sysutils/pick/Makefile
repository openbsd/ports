# $OpenBSD: Makefile,v 1.2 2017/05/02 20:17:31 fcambus Exp $

COMMENT =	fuzzy select anything

V =		1.6.1
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
