# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:08 naddy Exp $

COMMENT =	frontend for sudo

VERSION =	0.13.0

NAME =		lxqt-sudo
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c lxqt m util

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		security/sudo \
			x11/lxqt/l10n,-sudo

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
