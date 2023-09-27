COMMENT =	Qt5 configuration tool

DISTNAME =	qt5ct-1.7

CATEGORIES =	x11

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  qt5ct-common              0.0 # 1.7

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets c m

SITES =		${SITE_SOURCEFORGE:=qt5ct/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/qmake \
		x11/qt5

RUN_DEPENDS +=	devel/desktop-file-utils

.include <bsd.port.mk>
