# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:35 sthen Exp $

COMMENT =	OAuth support library for Qt-based applications
V =		1.0.1
DISTNAME =	qoauth-${V}-src
PKGNAME =	${DISTNAME:C/-src//}
CATEGORIES =	security devel
HOMEPAGE =	https://github.com/ayoy/qoauth
REVISION =	2

SHARED_LIBS =	qoauth		0.0

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =		lib/qt4/QtNetwork m pthread qca ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://files.ayoy.net/qoauth/$V/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/qmake x11/qt4
SEPARATE_BUILD =	No
MODQMAKE_ARGS =		PREFIX=${PREFIX}

LIB_DEPENDS =		security/qca

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
