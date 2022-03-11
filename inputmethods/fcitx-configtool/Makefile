COMMENT =	configure tool for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-configtool
GH_TAGNAME =	0.4.10

CATEGORIES =	inputmethods sysutils

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER =	Shawn Chiou <shawn.chiou@gmail.com>

# GPL-v2
PERMIT_PACKAGE=	Yes

WANTLIB +=	atk-1.0 c cairo cairo-gobject fcitx-config fcitx-core
WANTLIB +=	fcitx-gclient fcitx-utils gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB +=	glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB +=	pangocairo-1.0

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/iso-codes
RUN_DEPENDS =	devel/iso-codes
LIB_DEPENDS =	inputmethods/fcitx,-main \
		x11/gtk+3

NO_TEST =	Yes

.include <bsd.port.mk>
