COMMENT=	unofficial GUI client for Signal instant messenger

DIST_TUPLE= \
	gitlab schmiddi-on-mobile flare 0.17.5 . \
	github whisperfish presage 194148f88ccf595c089474294bc3ff685b4e1b00 deps/presage \
	github whisperfish libsignal-service-rs 0a3bea3fb81599590bf3a54dc00f0a93f36f56e6 deps/libsignal-service-rs \
	github whisperfish blurhash-rs 2135e101377e514266358b3e67adab37e736bb8a deps/blurhash-rs \
	github signalapp curve25519-dalek signal-curve25519-4.1.3 deps/signal-curve25519 \
	github signalapp libsignal v0.83.0 deps/libsignal \
	github nytopop quickcheck_async 76b13525ca93e0725e757f841fc6ccab8bae1913 deps/quickcheck_async \
	github signalapp boring signal-v4.18.0 deps/boring \
	github signalapp SparsePostQuantumRatchet v1.2.0 deps/spqr

PKGNAME=	${DISTNAME:S/flare/flare-messenger/}

CATEGORIES=	net

HOMEPAGE=	https://mobile.schmidhuberj.de/flare

# AGPLv3 only
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODCARGO_WANTLIB} adwaita-1 crypto gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-4 gtksourceview-5
WANTLIB += intl m pango-1.0 spelling-1

MODULES=	devel/cargo \
		devel/dconf \
		devel/meson

MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No
MODCARGO_CRATES_KEEP=	libsqlite3-sys

MAKE_ENV=	${MODCARGO_ENV}
MAKE_FLAGS=	V=1

BUILD_DEPENDS=	devel/gettext,-tools \
		x11/blueprint-compiler \
		x11/gnome/libsecret
RUN_DEPENDS=	x11/gnome/libsecret \
		x11/gtk+4,-guic \
		devel/desktop-file-utils
LIB_DEPENDS=	textproc/libspelling \
		x11/gnome/libadwaita \
		x11/gtk+4 \
		x11/gtksourceview5

post-extract:
	mv ${WRKDIR}/flare-* ${WRKSRC}

pre-configure:
	@${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
