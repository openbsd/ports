COMMENT=		GStreamer bindings for Rust

V=			0.13.6
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-a9f6a26907f735b528f74e3f91df4e7a9f3aa469

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		fdo gstreamer gstreamer-rs 1c0548b1478210feab64592329f274aca7730854 ../gstreamer-rs
DIST_TUPLE +=		github gtk-rs gtk-rs-core 7a02e4f0e7c824fc1ac63b1891000ac1715bc450 ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 20d14bdf598eb1a3bde54e68c32b92775b165bd4 ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 2afb025a327173ce891954c052e804d0f880368a ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors

WANTLIB += ${MODCARGO_WANTLIB} gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gstgl-1.0 gstreamer-1.0 gstvideo-1.0 gtk-4

MODULES=		devel/cargo \
			devel/meson

MODCARGO_DIST_SUBDIR=	../cargo
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gtk+4

### disable most until proven usefull; subpackage if dependencies grow too much
# audio
DISABLED +=     audiofx claxon csound lewton spotify
# generic -- -Dsodium-source=system
DISABLED +=     file originalbuffer gopbuffer sodium threadshare inter
# mux
DISABLED +=     flavors fmp4 mp4
# net
DISABLED +=     aws hlssink3 mpegtslive ndi onvif raptorq reqwest rtsp rtp
DISABLED +=     webrtc webrtchttp quinn
# text
DISABLED +=     textahead json regex textwrap
# utils
DISABLED +=     fallbackswitch livesync togglerecord tracers uriplaylistbin
# video
DISABLED +=     cdg closedcaption dav1d ffv1 gif hsv png rav1e videofx webp

.for d in ${DISABLED}
CONFIGURE_ARGS +=   -D${d}=disabled
.endfor
###

pre-configure:
	${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
