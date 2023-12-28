COMMENT=	two-dimensional molecule drawing program

V=		1.11.0
DISTNAME=	xdrawchem-${V}

CATEGORIES=	x11 biology

HOMEPAGE=	https://gitlab.com/yamanq/xdrawchem/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB+=	Qt5Svg Qt5Widgets Qt5Xml c m openbabel

SITES=		https://gitlab.com/yamanq/xdrawchem/-/archive/v${V}/

MODULES=	devel/qmake \
		x11/qt5

LIB_DEPENDS=	misc/openbabel>=3.0.0 \
		x11/qt5/qtsvg

# Workaround to fix the build with libcxx 16.0.6 until openbabel is updated
# to include https://github.com/openbabel/openbabel/pull/2464
CXXFLAGS=	-D_LIBCPP_ENABLE_CXX17_REMOVED_UNARY_BINARY_FUNCTION

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/xdrawchem-v1.11.0-53047f64b571b5f01623bf897eb9e2b212778031

.include <bsd.port.mk>
