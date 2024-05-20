COMMENT =	Qt-based library for writing accessibility apps

DISTNAME =	libqaccessibilityclient-0.6.0
REVISION =	0

CATEGORIES =	x11 devel

SHARED_LIBS +=  qaccessibilityclient-qt6  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += m

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

SITES =		${SITE_KDE:=stable/libqaccessibilityclient/}

EXTRACT_SUFX =	.tar.xz

MODULES =	devel/kf6

TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
