COMMENT=		GNOME's Tour & Greeter

GNOME_PROJECT=		gnome-tour
GNOME_VERSION=		40.1

# needed due to the devel/cargo MODULE
DISTFILES=		${GNOME_PROJECT}-${GNOME_VERSION}${EXTRACT_SUFX}

# GPLv3
# From Fedora:
# bundled rust crates all include either MIT or GPLv3+ as one of the possible
# licenses, which when compiled into gnome-tour binary together with GPLv3+
# gnome-tour source code results in effective GPLv3+ for the resulting binary
PERMIT_PACKAGE=		Yes

WANTLIB += c c++abi gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 handy-1
WANTLIB += intl m pango-1.0 pthread

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		lang/rust

LIB_DEPENDS=		x11/libhandy

# don't rebuild the gettext crate
MAKE_ENV=		GETTEXT_DIR=${LOCALBASE}

pre-configure:
	mkdir -p ${WRKBUILD}/.cargo
	sed -e 's,directory = .*",directory = "${WRKSRC}/vendor",g' \
		${WRKSRC}/.cargo/config \
		>${WRKBUILD}/.cargo/config ${}

.include <bsd.port.mk>
