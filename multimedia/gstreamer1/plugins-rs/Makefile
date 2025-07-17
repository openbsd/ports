COMMENT=		GStreamer bindings for Rust

V=			0.14.0
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-8511071f6518e6df5dcadf8b113a43addd7ea1fe

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		fdo gstreamer gstreamer-rs ef17224f7a88b01d788c7ebc81a85d10df5f09a1 ../gstreamer-rs
DIST_TUPLE +=		github gtk-rs gtk-rs-core a93a100230de5eb68850af90a96961c34d2b917b ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 416aa3ae63fc33ff6436ab1fe26ffbdbe47e8976 ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 bd9eabfc14c9ad53c37b32279e276619f4390ab8 ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors

WANTLIB += ${MODCARGO_WANTLIB} gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gstgl-1.0 gstreamer-1.0 gstvideo-1.0 gtk-4

MODULES=		devel/cargo \
			devel/meson

MODCARGO_DIST_SUBDIR=	../cargo
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

BUILD_DEPENDS=		devel/cargo-c

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gtk+4

### disable most until proven usefull; subpackage if dependencies grow too much
# analytics
DISABLED +=	analytics
# audio
DISABLED +=	audiofx claxon csound lewton spotify elevenlabs speechmatics
# generic -- -Dsodium-source=system
DISABLED +=	file originalbuffer gopbuffer sodium threadshare inter
DISABLED +=	streamgrouper
# mux
DISABLED +=	flavors fmp4 mp4
# net
DISABLED +=	aws hlssink3 mpegtslive ndi onvif raptorq reqwest rtsp rtp
DISABLED +=	webrtc webrtchttp quinn hlsmultivariantsink
# text
DISABLED +=	textahead json regex textwrap
# utils
DISABLED +=	fallbackswitch livesync togglerecord tracers uriplaylistbin
# video
DISABLED +=	cdg closedcaption dav1d ffv1 gif hsv png rav1e videofx webp
DISABLED +=	vvdec skia

.for d in ${DISABLED}
CONFIGURE_ARGS +=   -D${d}=disabled
.endfor
###

pre-configure:
	${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
