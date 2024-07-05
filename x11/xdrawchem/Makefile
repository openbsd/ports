COMMENT=	two-dimensional molecule drawing program

V=		1.11.1
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

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/xdrawchem-v1.11.1-9f224231491314825b3eebb23027f529f0f41f97

.include <bsd.port.mk>
