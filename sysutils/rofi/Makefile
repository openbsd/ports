# $OpenBSD: Makefile,v 1.15 2016/07/06 21:36:13 sthen Exp $

COMMENT =		window switcher, run dialog and dmenu replacement

GH_PROJECT =		rofi
GH_TAGNAME =		1.0.0
REVISION =		0
GH_ACCOUNT =		DaveDavenPort

CATEGORIES =		sysutils x11
HOMEPAGE =		https://davedavenport.github.io/rofi/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

WANTLIB += X11 X11-xcb c cairo glib-2.0 gobject-2.0 intl pango-1.0
WANTLIB += pangocairo-1.0 startup-notification-1 xcb xcb-ewmh
WANTLIB += xcb-icccm xcb-render xcb-util xcb-xinerama xcb-xkb
WANTLIB += xkbcommon-x11 xkbcommon

BUILD_DEPENDS +=	x11/i3
LIB_DEPENDS =		devel/pango \
			devel/startup-notification \
			x11/xkbcommon

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

pre-configure:
	sed -i 's,/usr/bin/env bash,/bin/sh,' ${WRKSRC}/script/get_git_rev.sh

post-install:
	sed -i 's,#!.*bash,#!/usr/local/bin/bash,g' ${WRKSRC}/Examples/*.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rofi
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/rofi

.include <bsd.port.mk>
