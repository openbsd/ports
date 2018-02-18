# $OpenBSD: Makefile,v 1.1.1.1 2018/02/18 15:08:19 kn Exp $

COMMENT =		parse, extract and modify UEFI firmware images

GH_ACCOUNT =		LongSoft
GH_PROJECT =		UEFITool
GH_TAGNAME =		0.22.3

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

LIB_DEPENDS =		${MODQT5_LIB_DEPENDS}

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/UEFITool ${PREFIX}/bin/

.include <bsd.port.mk>
