# ignore 0.* and t* (pre) releases
PORTROACH =		limit:^A

COMMENT =		UEFI firmware image viewer and editor

GH_ACCOUNT =		LongSoft
GH_PROJECT =		UEFITool
GH_TAGNAME =		A62
PKGNAME =		${DISTNAME:S/A//}

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MASTER_SITES0 =		${MASTER_SITES_GITHUB:H:H:H}/commit/
# pending "Fix OpenBSD build, use swap16(3) from <endian.h>"
# https://github.com/LongSoft/UEFITool/pull/322
PATCHFILES =		${GH_PROJECT}-fix-build-use-swap16-{}d6fbc91.patch:0
PATCH_DIST_STRIP =	-p1

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

MODQMAKE_RECURSIVE =	No
MODQMAKE_PROJECTS =	${GH_PROJECT}/*.pro

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${GH_PROJECT}/${GH_PROJECT} ${PREFIX}/bin/

.include <bsd.port.mk>
