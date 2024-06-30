BROKEN-sparc64 =	error: #error "unknown CPU architecture"

COMMENT =	log file navigator

V =		0.12.2
DISTNAME =	lnav-${V}
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	sysutils

HOMEPAGE =	https://lnav.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} archive bz2 c curl curses ereadline
WANTLIB += m pcre2-8 sqlite3 util z

BUILD_DEPENDS =	devel/re2c

LIB_DEPENDS =	archivers/libarchive \
		databases/sqlite3 \
		net/curl \
		devel/pcre2 \
		devel/readline \
		archivers/bzip2

SITES =		https://github.com/tstack/lnav/releases/download/v${V}/

# c++14
COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE = gnu

CONFIGURE_ENV = CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lereadline" \
		ac_cv_path_CARGO_CMD= \
		ac_cv_header_execinfo_h=no \
		ac_cv_search_backtrace=

# tests running lnav-test crashes/hangs in an infinite loop and need to be killed
#NO_TEST =	Yes
TEST_DEPENDS =	shells/bash
# TESTS_ENVIRONMENT is a bash script
pre-test:
	sed -i -e 's#^SHELL.*#SHELL = /usr/local/bin/bash#' ${WRKSRC}/src/tailer/Makefile ${WRKSRC}/src/yajlpp/Makefile ${WRKSRC}/test/Makefile

USE_GMAKE =	Yes

.include <bsd.port.mk>
