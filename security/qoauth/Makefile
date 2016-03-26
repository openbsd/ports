# $OpenBSD: Makefile,v 1.4 2016/03/26 20:37:36 zhuk Exp $

COMMENT =	OAuth support library for Qt-based applications
V =		1.0.1
DISTNAME =	qoauth-${V}-src
PKGNAME =	${DISTNAME:C/-src//}
CATEGORIES =	security devel
HOMEPAGE =	https://github.com/ayoy/qoauth

SHARED_LIBS =	qoauth		0.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtNetwork m pthread qca2 stdc++

MASTER_SITES =		http://files.ayoy.net/qoauth/$V/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/qmake x11/qt4
SEPARATE_BUILD =	No
MODQMAKE_ARGS =		PREFIX=${PREFIX}

LIB_DEPENDS =		security/qca2

MAKE_FLAGS =		LIBqoauth_VERSION=${LIBqoauth_VERSION}
DESTDIRNAME =		INSTALL_ROOT

# XXX wants to interact with external servers, too
TEST_IS_INTERACTIVE =	X11
TEST_NAMES =		ft_interface ut_interface

do-test:
.for _t in ${TEST_NAMES}
	cd ${WRKBUILD}/tests/${_t} && \
	    LD_PRELOAD=${WRKBUILD}/lib/libqoauth.so.${LIBqoauth_VERSION} \
	    ./${_t}
.endfor

.include <bsd.port.mk>
