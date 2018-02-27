# $OpenBSD: Makefile,v 1.23 2018/02/27 21:47:38 espie Exp $

COMMENT =		window switcher, run dialog and dmenu replacement

GH_PROJECT =		rofi
GH_TAGNAME =		1.5.0
GH_ACCOUNT =		DaveDavenPort
REVISION =		0

CATEGORIES =		sysutils x11
HOMEPAGE =		https://davedavenport.github.io/rofi/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

WANTLIB += c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 intl m pango-1.0 pangocairo-1.0 pthread
WANTLIB += rsvg-2 startup-notification-1 xcb xcb-ewmh xcb-icccm
WANTLIB += xcb-randr xcb-render xcb-util xcb-xinerama xcb-xkb
WANTLIB += xcb-xrm xkbcommon xkbcommon-x11

BUILD_DEPENDS +=	devel/bison \
			x11/i3
LIB_DEPENDS =		devel/startup-notification \
			x11/gnome/librsvg \
			x11/xkbcommon

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-check
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			YACC="bison -y"

pre-configure:
	sed -i 's,/usr/bin/env bash,/bin/sh,' ${WRKSRC}/script/get_git_rev.sh

post-install:
	sed -i 's,#!.*bash,#!/usr/local/bin/bash,g' ${WRKSRC}/Examples/*.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rofi
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/rofi

.include <bsd.port.mk>
