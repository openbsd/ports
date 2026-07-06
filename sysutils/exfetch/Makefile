COMMENT =	shell-extensible fetching program

DIST_TUPLE +=	codeberg izder456 exfetch 1.7 .
DIST_TUPLE +=	github schovi baked_file_system \
		f4f658812c5b8b404437d8cf34b72a0eb5fe7701 \
		lib/baked_file_system
DIST_TUPLE +=	github KaneRoot pledge.cr \
		602a6e6f395a6ebb5aeae948ee8595407bae4e73 \
		lib/pledge

WRKDIST =	${WRKDIR}/exfetch

CATEGORIES =	sysutils

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# ISC (exfetch), MIT (baked_file_system), ISC (pledge.cr)
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =		converters/libiconv \
			devel/boehm-gc devel/pcre2
BUILD_DEPENDS =		lang/crystal

COMPILER_LANGS =	c

# uses pledge()
WANTLIB += c c++abi gc iconv m pcre2-8
WANTLIB += pthread z

FAKE_FLAGS =	PREFIX=${TRUEPREFIX} \
		MANDIR=${TRUEPREFIX}/man/man1

MAKE_FLAGS =	DEBUG=on

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
