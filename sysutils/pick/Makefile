# $OpenBSD: Makefile,v 1.12 2020/05/16 08:31:55 anton Exp $

COMMENT =	fuzzy select anything

V =		4.0.0
DISTNAME =	pick-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/mptre/pick

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/mptre/pick/releases/download/v${V}/

CONFIGURE_STYLE =	simple

.include <bsd.port.mk>
