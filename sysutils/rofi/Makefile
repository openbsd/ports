# $OpenBSD: Makefile,v 1.7 2015/12/07 09:04:38 jasper Exp $

COMMENT =		window switcher, run dialog and dmenu replacement

GH_PROJECT =		rofi
GH_TAGNAME =		0.15.11
REVISION =		1
GH_ACCOUNT =		DaveDavenPort
DISTNAME =		${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES =		sysutils x11
HOMEPAGE =		https://davedavenport.github.io/rofi/

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext

WANTLIB += X11 Xext Xinerama c cairo glib-2.0 gobject-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pthread startup-notification-1

BUILD_DEPENDS +=	x11/i3
LIB_DEPENDS =		devel/pango \
			devel/startup-notification

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12
BUILD_DEPENDS+=		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

TEST_TARGET =		test

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -i

post-install:
	sed -i 's,#!.*bash,#!/usr/local/bin/bash,g' ${WRKSRC}/Examples/*.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rofi
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/rofi

.include <bsd.port.mk>
