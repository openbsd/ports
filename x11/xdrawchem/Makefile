COMMENT=	two-dimensional molecule drawing program

DIST_TUPLE=	github bryanherger xdrawchem v2.0.1 .

CATEGORIES=	x11 biology

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6PrintSupport
WANTLIB +=	Qt6Svg Qt6Widgets Qt6Xml c execinfo m openbabel

MODULES=	devel/cmake \
		x11/qt6

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib -lexecinfo

LIB_DEPENDS=	misc/openbabel>=3.0.0 \
		x11/qt6/qtsvg

WRKSRC=		${WRKDIST}/xdrawchem-qt5

.include <bsd.port.mk>
