# ignore 0.* and t* (pre) releases
PORTROACH =		limit:^A

COMMENT =		UEFI firmware image viewer and editor

GH_ACCOUNT =		LongSoft
GH_PROJECT =		UEFITool
GH_TAGNAME =		A62
PKGNAME =		${DISTNAME:S/A//}
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MASTER_SITES0 =		${MASTER_SITES_GITHUB:H:H:H}/commit/
# merged "Fix OpenBSD build, use swap16(3) from <endian.h>"
# https://github.com/LongSoft/UEFITool/pull/322
PATCHFILES =		${GH_PROJECT}-fix-build-use-swap16-{}6e7b46d.patch:0
PATCH_DIST_STRIP =	-p1

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m

MODULES =		devel/cmake \
			x11/qt6

NO_TEST =		Yes

do-install:
	# open "cmake config does not generate an install target"
	# https://github.com/LongSoft/UEFITool/issues/300
	find ${WRKBUILD} -type f -name UEFI\* -perm -u=x \
	    -exec ${INSTALL_PROGRAM} {} ${PREFIX}/bin/ \;

.include <bsd.port.mk>
