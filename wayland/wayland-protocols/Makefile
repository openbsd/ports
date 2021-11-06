# $OpenBSD: Makefile,v 1.1.1.1 2021/11/06 18:59:49 rsadowski Exp $

COMMENT =	Wayland protocols

DISTNAME =	wayland-protocols-1.23

CATEGORIES =	wayland

HOMEPAGE =	https://wayland.freedesktop.org/

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://wayland.freedesktop.org/releases/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/wayland
RUN_DEPENDS =		wayland/wayland

.include <bsd.port.mk>
