COMMENT=		look up travel information for many different railways

GNOME_PROJECT =		railway
GNOME_VERSION =		2.7.0
DISTFILES =		diebahn-${GNOME_VERSION}${EXTRACT_SUFX}{download}
WRKDIST =		${WRKDIR}/diebahn-${GNOME_VERSION}
SITES =			https://gitlab.com/schmiddi-on-mobile/railway/-/package_files/139774320/

# GPLv3+
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/rust \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils \
			gtk-update-icon-cache

LIB_DEPENDS =	x11/gnome/libadwaita

WANTLIB += ${MODRUST_WANTLIB} adwaita-1 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-4 intl m pango-1.0

# don't rebuild the gettext crate
MAKE_ENV=		GETTEXT_DIR=${LOCALBASE} \
			CARGO_BUILD_JOBS=${MAKE_JOBS}

pre-configure:
	mkdir -p ${WRKBUILD}/.cargo
	sed -e 's,directory = .*",directory = "${WRKSRC}/vendor",g' \
		${WRKSRC}/.cargo/config \
		>${WRKBUILD}/.cargo/config ${}
	# patched crate
	echo "{'files':{}}" > ${WRKSRC}/vendor/libadwaita/.cargo-checksum.json

post-install:
	ln -sf ${PREFIX}/bin/diebahn ${PREFIX}/bin/railway

.include <bsd.port.mk>
