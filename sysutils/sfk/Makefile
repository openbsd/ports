COMMENT =	swiss file knife: command line tools collection

DISTNAME =	sfk-2.0.0
PKGNAME =	sfk-2.0.0.3

CATEGORIES =	sysutils

HOMEPAGE =	https://stahlworks.com/dev/swiss-file-knife.html

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

SITES =		${SITE_SOURCEFORGE:=swissfileknife/}

FIX_EXTRACT_PERMISSIONS =	Yes

FIX_CRLF_FILES =	sfk.cpp \
			sfkbase.hpp \
			sfkext.cpp \
			sfkpack.cpp

DIST_SUBDIR =		${PKGNAME}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
