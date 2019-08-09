# $OpenBSD: Makefile,v 1.1.1.1 2019/08/09 12:47:49 stsp Exp $

COMMENT =	game of trees version control system

V =		0.1
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

post-configure:
	${MAKE_PROGRAM} -C ${WRKSRC} obj

.include <bsd.port.mk>
