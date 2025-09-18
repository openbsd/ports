COMMENT=		GStreamer bindings for Rust

V=			0.14.2
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-5ae76f542721fd4cf8bf68a02c40a94cb640bb51

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		github gtk-rs gtk-rs-core b4fa4f26e84fd2f133fedfc6807b07af654909f5 ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 52ff1dd4e115014ad6fdb598b60f9b7551f1a322 ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 bd9eabfc14c9ad53c37b32279e276619f4390ab8 ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors
DIST_TUPLE +=		fdo gstreamer gstreamer-rs e38ebef8d6d6a4fe80b3f081265703b06caf0eef ../gstreamer-rs

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
