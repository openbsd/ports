COMMENT =	graphical NEC2 antenna simulator

V =		4.4.17
DISTNAME =	xnec2c-v$V
PKGNAME =	xnec2c-$V

CATEGORIES =	cad hamradio

HOMEPAGE =	https://www.xnec2c.org/
SITES =		https://www.xnec2c.org/releases/

MAINTAINER =	Enzo Nicosia <me@katolaz.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0 pthread

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/glib2 \
		x11/gtk+3

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

USE_GMAKE =	Yes

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =	Yes

post-install:
	mv ${PREFIX}/share/xnec2c/examples ${PREFIX}/share/examples/xnec2c
	rmdir ${PREFIX}/share/xnec2c

.include <bsd.port.mk>
