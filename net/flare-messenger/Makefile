COMMENT=	unofficial GUI client for Signal instant messenger

DIST_TUPLE= \
	gitlab schmiddi-on-mobile flare 0.20.3 . \
	github whisperfish presage 7b3acf550300fa3675e65616efe7ed8dbf85774d deps/presage \
	github whisperfish libsignal-service-rs 782c0d6bf0c4a6ab52f98d7b6d950a13f28f3020 deps/libsignal-service-rs \
	github whisperfish blurhash-rs a46af692e783f81f4ac752c91ef13847521c5352 deps/blurhash-rs \
	github signalapp curve25519-dalek signal-curve25519-4.1.3 deps/signal-curve25519 \
	github signalapp libsignal v0.91.0 deps/libsignal \
	github nytopop quickcheck_async 76b13525ca93e0725e757f841fc6ccab8bae1913 deps/quickcheck_async \
	github signalapp boring signal-v5.0.2 deps/boring \
	github signalapp SparsePostQuantumRatchet v1.5.1 deps/spqr

PKGNAME=	${DISTNAME:S/flare/flare-messenger/}

CATEGORIES=	net

HOMEPAGE=	https://mobile.schmidhuberj.de/flare

# AGPLv3 only
PERMIT_PACKAGE=	Yes

# C1x
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += ${MODCARGO_WANTLIB} adwaita-1 crypto gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-4 gtksourceview-5
WANTLIB += intl m pango-1.0 spelling-1

MODULES=	devel/meson \
		devel/dconf \
		devel/cargo

MODCARGO_CRATES_KEEP=	libsqlite3-sys

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/protobuf \
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

.include "crates.inc"

.include <bsd.port.mk>
