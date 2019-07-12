# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:04 sthen Exp $

COMMENT =	OAuth support library for Qt-based applications
V =		0.97
DISTNAME =	${V}
PKGNAME =	kqoauth-${V}
CATEGORIES =	security devel
HOMEPAGE =	https://github.com/kypeli/kQOAuth
REVISION =	1

SHARED_LIBS =	kqoauth		0.0

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =  ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += m pthread ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${HOMEPAGE}/archive/
DIST_SUBDIR =	kqoauth
WRKDIST =	${WRKDIR}/kQOAuth-${V}

MODULES =	devel/qmake x11/qt4

MAKE_FLAGS =	LIBkqoauth_VERSION=${LIBkqoauth_VERSION}
DESTDIRNAME =	INSTALL_ROOT

TEST_NAMES =	ft_kqoauth ut_kqoauth

do-test:
.for _t in ${TEST_NAMES}
	cd ${WRKBUILD}/tests/${_t} && \
	    LD_PRELOAD=${WRKBUILD}/lib/libkqoauth.so.${LIBkqoauth_VERSION} \
	    ./${_t}
.endfor

.include <bsd.port.mk>
