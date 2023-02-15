COMMENT =	maildir sort

V =		11.5.1
REVISION =	0
DISTNAME =	mdsort-${V}

CATEGORIES =	mail

HOMEPAGE =	https://github.com/mptre/mdsort

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# __builtin_{add,mul}_overflow() not available in base-gcc
COMPILER = base-clang ports-gcc
COMPILER_LANGS = c 

# uses pledge()
WANTLIB +=	c

MASTER_SITES =	https://github.com/mptre/mdsort/releases/download/v${V}/

CONFIGURE_STYLE =	simple

TEST_ENV =		TESTFLAGS="-Tfault -Tfdleak"

.include <bsd.port.mk>
