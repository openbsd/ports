COMMENT =		mobile shell

DISTNAME =		mosh-1.4.0
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://mosh.org/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=		${COMPILER_LIBCXX} c crypto curses m protobuf
WANTLIB +=		pthread ssl util z

SITES =			${HOMEPAGE}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# C++17 is recent upstream choice since C++14 is needed by protobuf
COMPILER =		base-clang ports-gcc
CXXFLAGS +=		-std=gnu++17

LIB_DEPENDS =		devel/protobuf

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
# don't force PIE which doesn't work on all arches
CONFIGURE_ENV =		ax_cv_check_cxxflags__Werror___fPIE=no

.include <bsd.port.mk>
