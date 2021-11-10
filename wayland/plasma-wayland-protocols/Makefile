# $OpenBSD: Makefile,v 1.2 2021/11/10 07:30:37 rsadowski Exp $

COMMENT =	KDE Wayland Plasma protocols

VERSION =	1.5.0
DISTNAME =	plasma-wayland-protocols-${VERSION}

CATEGORIES =	wayland

HOMEPAGE =	https://kde.org/plasma-desktop/

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>
MODULES =		devel/kf5

MASTER_SITES =		${MASTER_SITE_KDE:=stable/plasma-wayland-protocols/}

BUILD_DEPENDS =		wayland/wayland
RUN_DEPENDS =		wayland/wayland

NO_BUILD =		Yes

.include <bsd.port.mk>
