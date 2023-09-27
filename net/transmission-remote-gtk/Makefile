COMMENT =	GTK client for remote Transmission daemon

V =		1.6.0
DISTNAME =	transmission-remote-gtk-${V}
CATEGORIES =	net

HOMEPAGE =	https://github.com/transmission-remote-gtk/transmission-remote-gtk

MAINTAINER =	Lucas <lucas@sexy.is>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl json-glib-1.0 m pango-1.0 soup-3.0

SITES =	https://github.com/transmission-remote-gtk/transmission-remote-gtk/releases/download/${V}/

EXTRACT_SUFX =	.tar.xz

MODULES =	devel/meson

BUILD_DEPENDS =	devel/gettext,-tools
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	devel/gettext,-runtime \
		devel/glib2 \
		devel/json-glib \
		devel/libsoup3 \
		x11/gtk+3

CONFIGURE_ARGS +=	-Dgeoip=disabled \
			-Dlibappindicator=disabled

.include <bsd.port.mk>
