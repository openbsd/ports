# $OpenBSD: Makefile,v 1.10 2017/03/14 06:27:23 jca Exp $

COMMENT =		mobile shell

DISTNAME =		mosh-1.2.6
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://mosh.org/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m ncursesw protobuf pthread ssl stdc++ util
WANTLIB +=		z

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		devel/protobuf

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
# don't force PIE which doesn't work on all arches
CONFIGURE_ENV =		ax_cv_check_cflags__Werror___fPIE=no \
			ax_cv_check_cxxflags__Werror___fPIE=no

.include <bsd.port.mk>
