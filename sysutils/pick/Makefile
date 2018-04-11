# $OpenBSD: Makefile,v 1.9 2018/04/11 06:55:15 anton Exp $

COMMENT =	fuzzy select anything

V =		2.0.2
DISTNAME =	pick-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/mptre/pick

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/mptre/pick/releases/download/v${V}/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
