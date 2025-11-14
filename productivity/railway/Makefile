COMMENT=		look up travel information for many different railways

GNOME_PROJECT=		railway
GNOME_VERSION=		2.9.2
DISTFILES=		diebahn-${GNOME_VERSION}${EXTRACT_SUFX}
WRKDIST=		${WRKDIR}/diebahn-${GNOME_VERSION}
SITES=			https://gitlab.com/api/v4/projects/34570753/packages/generic/railway/${GNOME_VERSION}/

CATEGORIES=		productivity

HOMEPAGE=		https://apps.gnome.org/DieBahn/

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODRUST_WANTLIB} adwaita-1 crypto gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-4 intl m pango-1.0 ssl

MODULES=		devel/meson \
			lang/rust \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils \
			gtk-update-icon-cache

BUILD_DEPENDS=		devel/appstream \
			x11/blueprint-compiler

LIB_DEPENDS=		x11/gnome/libadwaita

# don't rebuild the gettext crate
MAKE_ENV=		GETTEXT_DIR=${LOCALBASE} \
			CARGO_BUILD_JOBS=${MAKE_JOBS}

.if ${MACHINE_ARCH:Mi386}
# Ring requires SSE2 on i386
MAKE_ENV+=		RUSTFLAGS="-Ctarget-cpu=pentium4"
.endif

pre-configure:
	mkdir -p ${WRKBUILD}/.cargo
	sed -e 's,directory = .*",directory = "${WRKSRC}/vendor",g' \
		${WRKSRC}/.cargo/config \
		>${WRKBUILD}/.cargo/config ${}
	# patched crate
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/vendor/openssl-sys/.cargo-checksum.json

post-install:
	ln -sf ${TRUEPREFIX}/bin/diebahn ${PREFIX}/bin/railway

.include <bsd.port.mk>
