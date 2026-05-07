COMMENT =		cli to send desktop notifications

DIST_TUPLE =		codeberg dnkl fyi 1.0.4 .

CATEGORIES =		misc wayland x11

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c dbus-1

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		textproc/scdoc

LIB_DEPENDS =		x11/dbus

WRKDIST =		${WRKDIR}/fyi

.include <bsd.port.mk>

