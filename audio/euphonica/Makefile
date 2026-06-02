COMMENT =		GTK4 MPD client with delusions of grandeur

V =			0.99.4
PKGNAME =		euphonica-${V}
REVISION =		0

DIST_TUPLE =		github htkhiem euphonica v${V}-beta .
DIST_TUPLE +=		github htkhiem rust-mpd a8ddd7d624ee7ea2f4128e6df878e6b05fe5b0e7 ./rust-mpd

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

CATEGORIES =		audio

HOMEPAGE =		https://github.com/htkhiem/euphonica

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} adwaita-1 cairo crypto gio-2.0
WANTLIB += glib-2.0 gobject-2.0 graphene-1.0 gtk-4 intl m pipewire-0.3
WANTLIB += secret-1 sqlite3 ssl

MODULES =		devel/cargo \
			devel/meson

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2 \
			graphics/cairo \
			graphics/graphene \
			multimedia/pipewire/pipewire,-libs \
			x11/gnome/libadwaita \
			x11/gnome/libsecret \
			x11/gtk+4,-main

COMPILER =		base-clang ports-clang

# libclang.so
MODULES +=		lang/clang
MODCARGO_ENV +=		CLANG_BASE_PATH=/usr \
			LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			LD_LIBRARY_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

CONFIGURE_STYLE =	meson

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No

MAKE_ENV +=		${MODCARGO_ENV}

pre-configure:
	@${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
