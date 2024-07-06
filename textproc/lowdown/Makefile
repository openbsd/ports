COMMENT =	simple markdown translator
DISTNAME =	lowdown-1.1.0
CATEGORIES =	textproc

SHARED_LIBS =	lowdown		1.0	# 2

HOMEPAGE =	https://kristaps.bsd.lv/lowdown/
MAINTAINER =	Bryan Vyhmeister <bryan@bsdjournal.net>

# ISC
PERMIT_PACKAGE =	Yes

SITES =		https://kristaps.bsd.lv/lowdown/snapshots/

# uses pledge()
WANTLIB +=	c m

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${PREFIX}"

MAKE_FLAGS +=	LIBVER="${LIBlowdown_VERSION}"

ALL_TARGET =	lowdown
FAKE_TARGET =	install install_libs
TEST_TARGET =	regress

post-install:
	# remove liblowdown.so
	rm ${PREFIX}/lib/liblowdown.so

.include <bsd.port.mk>
