# $OpenBSD: Makefile,v 1.17 2019/02/05 13:27:25 jca Exp $

COMMENT =		mobile shell

DISTNAME =		mosh-1.3.2
REVISION =		2

CATEGORIES =		net

HOMEPAGE =		https://mosh.org/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=		c crypto m ncursesw protobuf pthread ssl ${COMPILER_LIBCXX} util
WANTLIB +=		z

MASTER_SITES =		${HOMEPAGE}

# C++11 needed by protobuf
COMPILER =		base-clang ports-gcc
CXXFLAGS +=		-std=gnu++11

LIB_DEPENDS =		devel/protobuf

CONFIGURE_STYLE =	gnu
# don't force PIE which doesn't work on all arches
CONFIGURE_ENV =		ax_cv_check_cflags__Werror___fPIE=no \
			ax_cv_check_cxxflags__Werror___fPIE=no

.include <bsd.port.mk>
