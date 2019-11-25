# $OpenBSD: Makefile,v 1.22 2019/11/25 23:49:13 stsp Exp $

COMMENT =	game of trees version control system

V =		0.21
DISTNAME =	got-${V}
CATEGORIES =	devel
HOMEPAGE =	https://gameoftrees.org
MAINTAINER =	Stefan Sperling <stsp@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c curses panel pthread util z
MASTER_SITES =		https://gameoftrees.org/releases/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_DEPENDS =		devel/git \
			${PKGPATH}=${V}
TEST_TARGET =		regress
FAKE_FLAGS =		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
