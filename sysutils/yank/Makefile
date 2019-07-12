# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:55 sthen Exp $

COMMENT =	yank terminal output to clipboard

V =		1.1.0
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
