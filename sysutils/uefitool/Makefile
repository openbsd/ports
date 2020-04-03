# $OpenBSD: Makefile,v 1.9 2020/04/03 20:48:02 kn Exp $

# ignore A* and t* (pre) releases
PORTROACH =		limit:^[0-9]

COMMENT =		parse, extract and modify UEFI firmware images

GH_ACCOUNT =		LongSoft
GH_PROJECT =		UEFITool
GH_TAGNAME =		0.28.0

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

MODQMAKE_PROJECTS =	. \
			UEFIPatch \
			UEFIReplace

NO_TEST =		Yes

do-install:
	find ${WRKBUILD} -type f -perm -u=x \
	    -exec ${INSTALL_PROGRAM} {} ${PREFIX}/bin/ \;

.include <bsd.port.mk>
