COMMENT =		labels and business card designer

GH_ACCOUNT=		j-evins
GH_PROJECT=		glabels-qt
GH_TAGNAME=		3.99-master638
PKGNAME=		glabels-${GH_TAGNAME:S/-master/pre/}

CATEGORIES=		productivity graphics print

HOMEPAGE=		https://glabels.org/

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6PrintSupport Qt6Svg Qt6Widgets Qt6Xml c m qrencode
WANTLIB += z zint

MODULES=		devel/cmake \
			x11/qt6

LIB_DEPENDS=		graphics/libqrencode \
			graphics/zint \
			x11/qt6/qtbase \
			x11/qt6/qtsvg

RUN_DEPENDS=		misc/shared-mime-info \
			x11/gtk+4,-guic

.include <bsd.port.mk>
