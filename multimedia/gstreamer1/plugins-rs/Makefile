COMMENT=		GStreamer bindings for Rust

V=			0.14.3
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-f5ba8124f1b86484a399599c810d95a9419b12be

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		github gtk-rs gtk-rs-core f1b0b52fb591d5164e90dc69d0567c5feb0276a5 ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 063c412ba57218b237e497aed934aa9e690179bf ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 bd9eabfc14c9ad53c37b32279e276619f4390ab8 ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors
DIST_TUPLE +=		fdo gstreamer gstreamer-rs b9a475cb179b9d7bff932e2fd9267f7118bffa15 ../gstreamer-rs

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
DISABLED +=	analytics
# audio
DISABLED +=	audiofx claxon csound lewton spotify elevenlabs speechmatics
# generic -- -Dsodium-source=system
DISABLED +=	file originalbuffer gopbuffer sodium threadshare inter
DISABLED +=	streamgrouper
# mux
DISABLED +=	flavors fmp4 mp4
# net
DISABLED +=	aws hlssink3 mpegtslive ndi raptorq reqwest rtsp rtp
DISABLED +=	webrtc webrtchttp quinn hlsmultivariantsink
# text
DISABLED +=	textahead json regex textwrap
# utils
DISABLED +=	fallbackswitch livesync togglerecord tracers uriplaylistbin
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
