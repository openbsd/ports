COMMENT=		LaTeX development environment
DISTNAME=		texmaker-6.0.1
REVISION =		0
CATEGORIES=		editors

HOMEPAGE=		https://www.xm1math.net/texmaker/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=			${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml c hunspell-1.7 m

MODULES=		devel/cmake \
			x11/qt6

RUN_DEPENDS=		print/texlive/base

LIB_DEPENDS =		textproc/hunspell \
			x11/qt6/qt5compat \
			x11/qt6/qtdeclarative \
			x11/qt6/qtpositioning \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine

NO_TEST=		Yes

CONFIGURE_ARGS =	-DUSE_SYSTEM_HUNSPELL=ON \
			-DINSTALL_DIR=${LOCALBASE}

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt \
		${WRKSRC}/3rdparty/pdfium/xfa/fgas/font/cfgas_fontmgr.cpp

post-configure:
	find ${WRKSRC} -type f -name '*.[ch]' -exec sed -i \
	's|#include "hunspell/hunspell.hxx"|#include <hunspell.hxx>|' {} +

.include <bsd.port.mk>
