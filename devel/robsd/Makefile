COMMENT =	build OpenBSD release

V =		19.0.0
DISTNAME =	robsd-${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/mptre/robsd

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

TEST_DEPENDS =	textproc/libxml

SITES =		https://github.com/mptre/robsd/releases/download/v${V}/

CONFIGURE_STYLE =	simple

.include <bsd.port.mk>
