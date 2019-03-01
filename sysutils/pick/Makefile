# $OpenBSD: Makefile,v 1.10 2019/03/01 06:54:21 anton Exp $

COMMENT =	fuzzy select anything

V =		3.0.0
DISTNAME =	pick-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/mptre/pick

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/mptre/pick/releases/download/v${V}/

CONFIGURE_STYLE =	simple

.include <bsd.port.mk>
