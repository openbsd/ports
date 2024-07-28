COMMENT =	desktop Fediverse app
PKGNAME =	${DISTNAME:L}
CATEGORIES =	www x11

GH_ACCOUNT =	GeopJr
GH_PROJECT =	Tuba
GH_TAGNAME =	v0.8.1

HOMEPAGE =	https://tuba.geopjr.dev/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 graphene-1.0 gtk-4 gtksourceview-5 icuuc
WANTLIB += intl json-glib-1.0 m pango-1.0 secret-1 soup-3.0 xml2

MODULES =	devel/dconf \
		devel/meson

BUILD_DEPENDS =	devel/appstream-glib \
		devel/gettext,-tools \
		lang/vala

LIB_DEPENDS =	devel/json-glib \
		devel/libgee \
		devel/libsoup3 \
		textproc/icu4c \
		x11/gnome/libadwaita \
		x11/gnome/libsecret \
		x11/gtksourceview5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/keyring \
		x11/gnome/seahorse \
		x11/gtk+4,-guic

post-install:
	cd ${PREFIX}/bin && ln -s dev.geopjr.Tuba tuba

.include <bsd.port.mk>
