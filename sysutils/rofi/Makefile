# $OpenBSD: Makefile,v 1.33 2020/11/30 15:46:04 jasper Exp $

COMMENT =		window switcher, run dialog and dmenu replacement

V =			1.6.1
DISTNAME =		rofi-${V}

CATEGORIES =		sysutils x11
HOMEPAGE =		https://github.com/davatorium/rofi

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT/X
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/download/${V}/

WANTLIB += c m pthread startup-notification-1 xcb xcb-ewmh xcb-icccm
WANTLIB += xcb-randr xcb-render xcb-util xcb-xinerama xcb-xkb
WANTLIB += xcb-xrm xkbcommon xkbcommon-x11

BUILD_DEPENDS +=	devel/bison
LIB_DEPENDS =		devel/startup-notification \
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
