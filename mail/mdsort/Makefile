# $OpenBSD: Makefile,v 1.24 2021/07/30 12:22:57 anton Exp $

COMMENT =	maildir sort

V =		10.0.1
DISTNAME =	mdsort-${V}

CATEGORIES =	mail

HOMEPAGE =	https://github.com/mptre/mdsort

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

MASTER_SITES =	https://github.com/mptre/mdsort/releases/download/v${V}/

CONFIGURE_STYLE =	simple

TEST_ENV =		TESTFLAGS="-Tfault -Tfdleak"

.include <bsd.port.mk>
