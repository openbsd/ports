# $OpenBSD: Makefile,v 1.6 2017/10/05 08:06:24 anton Exp $

COMMENT =	fuzzy select anything

V =		1.9.0
DISTNAME =	pick-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/calleerlandsson/pick

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/calleerlandsson/pick/releases/download/v${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
