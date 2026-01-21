COMMENT =		brewing software

V =			5.0.1
DISTNAME =		brewtarget-$V

CATEGORIES =		x11

HOMEPAGE =		https://www.brewtarget.beer

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6PrintSupport Qt6Sql Qt6Svg Qt6Widgets
WANTLIB += Qt6Xml c crypto execinfo m ssl xalan-c xerces-c

SITES =			https://github.com/Brewtarget/brewtarget/releases/download/v$V/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/xalan-c \
			x11/qt6/qtmultimedia \
			x11/qt6/qtsvg
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${X11BASE}/include" \
			-DDO_RELEASE_BUILD=ON \
			-DNO_MESSING_WITH_FLAGS=ON

NO_TEST =		Yes

post-build:
	sed \
		-e 's,@CONFIG_APPLICATION_NAME_LC@,brewtarget,' \
		-e 's,@CONFIG_APPLICATION_NAME_UC@,Brewtarget,' \
		${WRKSRC}/linux/desktop.in >${WRKSRC}/linux/brewtarget.desktop

.include <bsd.port.mk>
