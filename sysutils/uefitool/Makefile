# ignore 0.* and t* (pre) releases
PORTROACH =		limit:^A

COMMENT =		UEFI firmware image viewer and editor

GH_ACCOUNT =		LongSoft
GH_PROJECT =		UEFITool
GH_TAGNAME =		A60
PKGNAME =		${DISTNAME:S/A//}

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

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
