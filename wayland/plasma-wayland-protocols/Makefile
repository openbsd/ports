COMMENT =	KDE Wayland Plasma protocols

VERSION =	1.21.0
DISTNAME =	plasma-wayland-protocols-${VERSION}

CATEGORIES =	wayland

HOMEPAGE =	https://kde.org/plasma-desktop/

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

MODULES =		lang/python devel/kf6 x11/qt5

MODQT_DEPS =		NO

SITES =			${SITE_KDE:=stable/plasma-wayland-protocols/}
EXTRACT_SUFX ?=		.tar.xz

BUILD_DEPENDS =		wayland/wayland \
			wayland/wayland-protocols \
			${MODQT5_LIB_DEPENDS} \
			${MODQT6_LIB_DEPENDS}

RUN_DEPENDS =		wayland/wayland \
			wayland/wayland-protocols

NO_BUILD =		Yes

.include <bsd.port.mk>
