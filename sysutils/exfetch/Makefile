COMMENT =	shell-extensible fetching program

DIST_TUPLE +=	codeberg izder456 exfetch 1.5 .
DIST_TUPLE +=	github schovi baked_file_system \
		f4f658812c5b8b404437d8cf34b72a0eb5fe7701 \
		lib/baked_file_system

WRKDIST =	${WRKDIR}/exfetch

CATEGORIES =	sysutils

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# ISC (exfetch), MIT (baked_file_system)
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =		converters/libiconv \
			devel/boehm-gc devel/libevent2 \
			devel/pcre2
BUILD_DEPENDS =		lang/crystal

COMPILER_LANGS =	c

WANTLIB += c c++abi event_core event_extra gc iconv m pcre2-8
WANTLIB += pthread z

FAKE_FLAGS =	PREFIX=${TRUEPREFIX} \
		MANDIR=${TRUEPREFIX}/man/man1

NO_TEST =	Yes

.include <bsd.port.mk>
