# $OpenBSD: Makefile,v 1.3 2019/02/06 02:32:01 bcallah Exp $

COMMENT =	lightweight Qt5 plain-text editor
PKGNAME =	featherpad-${GH_TAGNAME:S/^V//}
CATEGORIES =	editors x11

GH_ACCOUNT =	tsujan
GH_PROJECT =	FeatherPad
GH_TAGNAME =	V0.9.3

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets Qt5X11Extras X11 c m

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	x11/qt5/qtsvg \
		x11/qt5/qtx11extras

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME:S/^V//}

.include <bsd.port.mk>
