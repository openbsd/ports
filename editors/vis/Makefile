COMMENT =		vi-like editor with sam-style structural regex support

DIST_TUPLE =		github martanne vis      v0.9	.
DIST_TUPLE +=		github martanne vis-test v0.5	test

CATEGORIES =		editors

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c curses iconv intl m termkey tre ${MODLUA_WANTLIB}

MODULES =		lang/lua
MODLUA_VERSION =	5.3

LIB_DEPENDS =		devel/libtermkey \
			textproc/tre

RUN_DEPENDS =		devel/lpeg,${MODLUA_FLAVOR}>=0.12

TEST_DEPENDS =		editors/vim \
			plan9/plan9port

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		LUA_VER=${MODLUA_FLAVOR}
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--mandir=${PREFIX}/man

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# for test/core/Makefile
USE_GMAKE =		Yes

TEST_ENV =		SHELL=/bin/sh

post-install:
	cd ${PREFIX} && \
		mv bin/vis{,e} && \
		mv man/man1/vis{,e}.1

.include <bsd.port.mk>
