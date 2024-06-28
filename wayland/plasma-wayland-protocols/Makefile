COMMENT =	KDE Wayland Plasma protocols

VERSION =	1.13.0
DISTNAME =	plasma-wayland-protocols-${VERSION}

CATEGORIES =	wayland

HOMEPAGE =	https://kde.org/plasma-desktop/

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

MODULES =		devel/kf6 x11/qt5

SITES =			${SITE_KDE:=stable/plasma-wayland-protocols/}
EXTRACT_SUFX ?=		.tar.xz

BUILD_DEPENDS =		wayland/wayland \
			wayland/wayland-protocols

RUN_DEPENDS =		wayland/wayland \
			wayland/wayland-protocols

NO_BUILD =		Yes

.include <bsd.port.mk>
