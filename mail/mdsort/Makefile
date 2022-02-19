# $OpenBSD: Makefile,v 1.30 2022/02/19 08:05:49 anton Exp $

COMMENT =	maildir sort

V =		11.3.2
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
