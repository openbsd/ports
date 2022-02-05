# $OpenBSD: Makefile,v 1.29 2022/02/05 07:41:33 anton Exp $

COMMENT =	maildir sort

V =		11.3.1
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
