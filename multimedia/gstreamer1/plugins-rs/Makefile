COMMENT=		GStreamer bindings for Rust

V=			0.15.4
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-1afff3711855238433862c0ce3bf34918e500386
REVISION=		0

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		github gtk-rs gtk-rs-core 08a30b9cccafc82194cb24df13806a176f20b0ae ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 2fcbc1544689df84b4f607d4dd6e7be668482494 ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 bd9eabfc14c9ad53c37b32279e276619f4390ab8 ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors
DIST_TUPLE +=		fdo gstreamer gstreamer-rs 50d71e64ce6153a4dda06fc03f09eb2755fb9285 ../gstreamer-rs

WANTLIB += ${MODCARGO_WANTLIB} cairo dav1d gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphene-1.0 gstaudio-1.0 gstbase-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstrtp-1.0 gsttag-1.0 gstvideo-1.0 gtk-4
WANTLIB += m pango-1.0 pangocairo-1.0 webpdemux

MODULES=		devel/meson \
			devel/cargo

MODCARGO_DIST_SUBDIR=	../cargo

# needs libclang.so
MODULES +=		lang/clang
MODCLANG_COMPILER_LINKS=	No
MAKE_ENV +=		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

BUILD_DEPENDS=		devel/cargo-c

LIB_DEPENDS=		graphics/libwebp \
			multimedia/dav1d \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+4

### disable most until proven usefull; subpackage if dependencies grow too much
# analytics
DISABLED +=	analytics burn
# audio
DISABLED +=	claxon csound lewton spotify elevenlabs speechmatics
DISABLED +=	demucs audioparsers whisper
# generic -- -Dsodium-source=system
DISABLED +=	file originalbuffer gopbuffer sodium threadshare inter
DISABLED +=	streamgrouper
# mux
DISABLED +=	flavors
# net
DISABLED +=	aws hlssink3 mpegtslive ndi raptorq reqwest rtsp rtp icecast
DISABLED +=	webrtc webrtchttp quinn hlsmultivariantsink deepgram
# text
DISABLED +=	textahead json regex textwrap textaccumulate
# utils
DISABLED +=	fallbackswitch livesync togglerecord uriplaylistbin
DISABLED +=	validate
# video
DISABLED +=	cdg ffv1 hsv png rav1e debugseimetainserter vvdec skia

.for d in ${DISABLED}
CONFIGURE_ARGS +=   -D${d}=disabled
.endfor
###

.include "crates.inc"

.include <bsd.port.mk>
