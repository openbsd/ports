# $OpenBSD: Makefile,v 1.18 2019/07/12 20:43:29 sthen Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.7.3
REVISION =	4
CATEGORIES =	archivers

# keep those in sync
SHARED_LIBS =	quazip	2.0		# 1.0
SHARED_LIBS +=	quazip5	2.0		# 1.0

HOMEPAGE =	http://quazip.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1 with static linking exception
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} m z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=quazip/}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake devel/qmake
# qmake.port.mk is used for tests only
MODQMAKE_PROJECTS =	qztest/qztest.pro

FLAVORS =		qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
FULLPKGNAME =		${PKGNAME:C/-/-qt5-/}
MODULES +=		x11/qt5
WANTLIB +=		Qt5Core
CONFIGURE_ARGS =	-DBUILD_WITH_QT4=No
CONFIGURE_ENV =		CXXFLAGS="${CXXFLAGS} -std=c++11"
CMAKENAME =		QuaZip5
.else
MODULES +=		x11/qt4
CONFIGURE_ARGS =	-DBUILD_WITH_QT4=Yes
CMAKENAME =		QuaZip
.endif

LIBNAME =		${CMAKENAME:L}
SUBST_VARS =		CMAKENAME LIBNAME

do-test:
	mkdir -p ${WRKBUILD}/qztest
	ln -sf ../lib${LIBNAME}.so.${LIBquazip_VERSION} ${WRKBUILD}/quazip/libquazip.so.${LIBquazip_VERSION}
	${MODQMAKE_configure}
	${MODQMAKE_build}
	cd ${WRKBUILD}/qztest; \
	env LD_LIBRARY_PATH=${WRKBUILD}/quazip ./qztest

.include <bsd.port.mk>
