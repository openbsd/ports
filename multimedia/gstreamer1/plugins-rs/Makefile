COMMENT=		GStreamer bindings for Rust

V=			0.15.0-alpha.2
PKGNAME=		gst-plugins-rs-0.15.0alpha2
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-621bdbd9f729b14394e0b0fe67472982a9304ac8

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		github gtk-rs gtk-rs-core 3f650520d9b1270960b75085de26862362407c67 ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 5c7cf8a757c25be0b3309135cd81bfbe91fe67a9 ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 bd9eabfc14c9ad53c37b32279e276619f4390ab8 ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors
DIST_TUPLE +=		fdo gstreamer gstreamer-rs 73c0763073bff66539ec3238e156c029d1d02641 ../gstreamer-rs

WANTLIB += ${MODCARGO_WANTLIB} cairo dav1d gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphene-1.0 gstbase-1.0 gstgl-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gstvideo-1.0 gtk-4 m pango-1.0 pangocairo-1.0 webpdemux

MODULES=		devel/cargo \
			devel/meson

MODCARGO_DIST_SUBDIR=	../cargo
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

BUILD_DEPENDS=		devel/cargo-c

LIB_DEPENDS=		graphics/libwebp \
			multimedia/dav1d \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+4

### disable most until proven usefull; subpackage if dependencies grow too much
# analytics
DISABLED +=	analytics burn
# audio
DISABLED +=	audiofx claxon csound lewton spotify elevenlabs speechmatics
DISABLED +=	demucs audioparsers
# generic -- -Dsodium-source=system
DISABLED +=	file originalbuffer gopbuffer sodium threadshare inter
DISABLED +=	streamgrouper
# mux
DISABLED +=	flavors isobmff
# net
DISABLED +=	aws hlssink3 mpegtslive ndi raptorq reqwest rtsp rtp
DISABLED +=	webrtc webrtchttp quinn hlsmultivariantsink icecast deepgram
# text
DISABLED +=	textahead json regex textwrap textaccumulate
# utils
DISABLED +=	fallbackswitch livesync togglerecord tracers uriplaylistbin
DISABLED +=	validate
# video
DISABLED +=	cdg ffv1 gif hsv png rav1e
DISABLED +=	vvdec skia

.for d in ${DISABLED}
CONFIGURE_ARGS +=   -D${d}=disabled
.endfor
###

pre-configure:
	${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
