COMMENT =		cli to send desktop notifications

V =			1.0.4
DISTNAME=		fyi-${V}
REVISION=		0

SITES =			https://codeberg.org/dnkl/fyi/releases/download/${V}/
DISTFILES =		fyi-${V}${EXTRACT_SUFX}

CATEGORIES =		misc wayland x11

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c dbus-1

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		textproc/scdoc

LIB_DEPENDS =		x11/dbus

.include <bsd.port.mk>

