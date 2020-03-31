# $OpenBSD: Makefile,v 1.21 2020/03/31 11:41:03 jca Exp $

COMMENT =		mobile shell

DISTNAME =		mosh-1.3.2
REVISION =		5

CATEGORIES =		net

HOMEPAGE =		https://mosh.org/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=		${COMPILER_LIBCXX} c crypto curses m protobuf
WANTLIB +=		pthread ssl util z

MASTER_SITES =		${HOMEPAGE}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# C++11 needed by protobuf
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/protobuf

CONFIGURE_STYLE =	gnu
# don't force PIE which doesn't work on all arches
CONFIGURE_ENV =		ax_cv_check_cflags__Werror___fPIE=no \
			ax_cv_check_cxxflags__Werror___fPIE=no

.include <bsd.port.mk>
