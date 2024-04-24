COMMENT =	libraries for creating business diagrams

VERSION =	3.0.1
DISTNAME =	kdiagram-${VERSION}
PKGNAME =	kdiagram-qt6-${VERSION}

CATEGORIES =	graphics

SHARED_LIBS +=	KChart6                   0.0 # 0.0
SHARED_LIBS +=	KGantt6                   0.0 # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6PrintSupport
WANTLIB += Qt6Svg Qt6Widgets m

SITES =		${SITE_KDE:=stable/kdiagram/${VERSION}/}
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake \
		devel/kf6

LIB_DEPENDS =	x11/qt6/qtsvg

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
