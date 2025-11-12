COMMENT =	Gtk+4 greetd login manager

DIST_TUPLE =	github rharish101 ReGreet 0.2.0 .
PKGNAME =	${DISTNAME:L}

CATEGORIES =	wayland

# GPLv3
PERMIT_PACKAGE = Yes

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS =	x11/gtk+4
RUN_DEPENDS =	wayland/greetd
WANTLIB += ${MODCARGO_WANTLIB} gio-2.0 glib-2.0 gobject-2.0 gtk-4
WANTLIB += m pango-1.0

.include "crates.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/regreet/
	${INSTALL_DATA} ${WRKSRC}/regreet.sample.toml ${PREFIX}/share/examples/regreet/

.include <bsd.port.mk>
