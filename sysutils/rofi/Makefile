# $OpenBSD: Makefile,v 1.18 2017/04/15 14:23:45 jasper Exp $

COMMENT =		window switcher, run dialog and dmenu replacement

GH_PROJECT =		rofi
GH_TAGNAME =		1.3.1
GH_ACCOUNT =		DaveDavenPort

CATEGORIES =		sysutils x11
HOMEPAGE =		https://davedavenport.github.io/rofi/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

WANTLIB += c cairo gio-2.0 glib-2.0 gobject-2.0 intl pango-1.0
WANTLIB += pangocairo-1.0 pthread startup-notification-1 xcb xcb-ewmh
WANTLIB += xcb-icccm xcb-randr xcb-render xcb-util xcb-xinerama
WANTLIB += xcb-xkb xcb-xrm xkbcommon xkbcommon-x11

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
