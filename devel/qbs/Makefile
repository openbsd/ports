# $OpenBSD: Makefile,v 1.2 2017/09/27 10:06:22 espie Exp $

COMMENT =	declarative cross-platform build tool
V =		1.9.0
DISTNAME =	qbs-src-${V}
PKGNAME =	qbs-${V}
REVISION =	0

SHARED_LIBS =	qbscore			2.0
SHARED_LIBS +=	qbsqtprofilesetup	1.4

CATEGORIES =	devel
HOMEPAGE =	https://doc.qt.io/qbs/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv3 or GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Script
WANTLIB += Qt5Widgets Qt5Xml c m

MASTER_SITES =		https://download.qt.io/official_releases/qbs/${V}/

MODULES =		devel/qmake x11/qt5

MODQMAKE_PROJECTS =	qbs.pro
MODQMAKE_ARGS =		CONFIG+=qbs_enable_unit_tests=1

BUILD_DEPENDS =		x11/qt5/qtdeclarative
RUN_DEPENDS =		x11/qt5/qtdeclarative
LIB_DEPENDS =		x11/qt5/qtbase \
			x11/qt5/qtscript

TEST_DEPENDS =		${BUILD_PKGPATH}

TEST_ENV =		LD_LIBRARY_PATH=${WRKBUILD}/lib

WRKSRC =		${WRKDIR}/dist/${DISTNAME}

do-test:
	cd ${WRKBUILD}/bin/; \
	for t in tst_*; do \
	${SETENV} ${ALL_TEST_ENV} ./$$t; \
	done

.include <bsd.port.mk>
