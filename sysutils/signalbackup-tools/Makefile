COMMENT =	tool to work with Signal backup files

GH_ACCOUNT =	bepaald
GH_PROJECT =	signalbackup-tools
GH_TAGNAME =	20251011

CATEGORIES =	sysutils

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto dbus-1 m sqlite3

# c++26
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	databases/sqlite3 \
		x11/dbus

DEBUG_PACKAGES = ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/signalbackup-tools ${PREFIX}/bin

.include <bsd.port.mk>
