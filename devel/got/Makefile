# $OpenBSD: Makefile,v 1.11 2019/08/23 12:54:00 stsp Exp $

COMMENT =	game of trees version control system

V =		0.11
DISTNAME =	got-${V}
CATEGORIES =	devel
HOMEPAGE =	https://gameoftrees.org
MAINTAINER =	Stefan Sperling <stsp@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c curses panel pthread util z
MASTER_SITES =		https://gameoftrees.org/releases/

TEST_DEPENDS =		devel/git \
			${PKGPATH}=${V}
TEST_TARGET =		regress
FAKE_FLAGS =		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
