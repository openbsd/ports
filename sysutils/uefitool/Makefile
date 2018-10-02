# $OpenBSD: Makefile,v 1.3 2018/10/02 07:26:52 kn Exp $

COMMENT =		parse, extract and modify UEFI firmware images

GH_ACCOUNT =		LongSoft
GH_PROJECT =		UEFITool
GH_TAGNAME =		0.25.1

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

MODQMAKE_PROJECTS =	. \
			UEFIPatch \
			UEFIReplace

LIB_DEPENDS =		${MODQT5_LIB_DEPENDS}

NO_TEST =		Yes

do-install:
	find ${WRKBUILD} -type f -perm -u=x \
	    -exec ${INSTALL_PROGRAM} {} ${PREFIX}/bin/ \;

.include <bsd.port.mk>
