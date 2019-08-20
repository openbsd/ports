# $OpenBSD: Makefile,v 1.7 2019/08/20 08:47:41 anton Exp $

COMMENT =	yank terminal output to clipboard

V =		1.2.0
DISTNAME =	yank-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/mptre/yank
MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/mptre/yank/releases/download/v${V}/

# uses pledge()
WANTLIB +=	c

RUN_DEPENDS =	x11/xsel

FAKE_FLAGS =	MANPREFIX=${PREFIX}/man

NO_TEST =	Yes

.include <bsd.port.mk>
