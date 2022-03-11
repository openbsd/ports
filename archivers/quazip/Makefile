COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
CATEGORIES =	archivers

GH_ACCOUNT =	stachenov
GH_PROJECT =	quazip
V =		0.8.1
GH_TAGNAME =	v$V
PKGNAME =	quazip-qt5-$V

SHARED_LIBS +=	quazip5	3.0		# 1.0

HOMEPAGE =	https://stachenov.github.io/quazip/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1 with static linking exception
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			x11/qt5

NO_TEST =		Yes

# Add back devel/qmake to MODULES if fixing tests
# qmake.port.mk is used for tests only
#MODQMAKE_PROJECTS =	qztest/qztest.pro

#do-test:
#	mkdir -p ${WRKBUILD}/qztest
#	ln -sf ../libquazip5.so.${LIBquazip5_VERSION} ${WRKBUILD}/quazip/libquazip5.so.${LIBquazip5_VERSION}
#	${MODQMAKE_configure}
#	${MODQMAKE_build}
#	cd ${WRKBUILD}/qztest; \
#	env LD_LIBRARY_PATH=${WRKBUILD}/quazip ./qztest

.include <bsd.port.mk>
