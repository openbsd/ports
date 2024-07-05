COMMENT =	lightweight Qt5 plain-text editor
PKGNAME =	featherpad-${GH_TAGNAME:S/^V//}
CATEGORIES =	editors x11

GH_ACCOUNT =	tsujan
GH_PROJECT =	FeatherPad
GH_TAGNAME =	V1.5.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt6Core Qt6DBus Qt6Gui Qt6PrintSupport
WANTLIB += Qt6Svg Qt6Widgets SM X11 Xext c hunspell-1.7 m

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	textproc/hunspell \
		x11/qt6/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

CXXFLAGS +=	-I${LOCALBASE}/include

.include <bsd.port.mk>
