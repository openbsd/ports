COMMENT =	modern IRC client written in GTK
CATEGORIES =	net

GH_ACCOUNT =	SrainApp
GH_PROJECT =	srain
GH_TAGNAME =	1.8.1

HOMEPAGE =	https://srain.silverrainz.me/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo cairo-gobject config crypto gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl secret-1 soup-3.0

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/libconfig \
		devel/libsoup3 \
		x11/gnome/libsecret \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/keyring \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-Dapp_indicator=false
NO_TEST =	Yes

post-install:
	mv ${WRKINST}/etc/srain ${PREFIX}/share/examples/

.include <bsd.port.mk>
