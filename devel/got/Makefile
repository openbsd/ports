# $OpenBSD: Makefile,v 1.15 2019/09/08 17:10:21 stsp Exp $

COMMENT =	game of trees version control system

V =		0.15
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
