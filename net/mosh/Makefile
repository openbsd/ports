# $OpenBSD: Makefile,v 1.14 2017/07/26 13:35:51 jca Exp $

COMMENT =		mobile shell

DISTNAME =		mosh-1.3.2

CATEGORIES =		net

HOMEPAGE =		https://mosh.org/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=		c crypto m ncursesw protobuf pthread ssl ${COMPILER_LIBCXX} util
WANTLIB +=		z

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		devel/protobuf

CONFIGURE_STYLE =	gnu
# don't force PIE which doesn't work on all arches
CONFIGURE_ENV =		ax_cv_check_cflags__Werror___fPIE=no \
			ax_cv_check_cxxflags__Werror___fPIE=no

.include <bsd.port.mk>
