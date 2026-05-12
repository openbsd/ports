COMMENT=		GStreamer bindings for Rust

V=			0.15.2
#PKGNAME=		gst-plugins-rs-0.15.0alpha2
DIST_TUPLE=		fdo gstreamer gst-plugins-rs ${V} .
WRKDIST=		${WRKDIR}/gst-plugins-rs-${V}-43af825d36368c55037c91abdda48f2905c230c2

# see patch-Cargo_toml;
# grep git+https Cargo.lock | sort -u
DIST_TUPLE +=		github gtk-rs gtk-rs-core ba575eeaf5c7cf043e55454620e5926593756c67 ../gtk-rs-core
DIST_TUPLE +=		github gtk-rs gtk4-rs 867a6737f36c735865119cff649b059ce337dcb2 ../gtk4-rs
DIST_TUPLE +=		github rust-av ffv1 bd9eabfc14c9ad53c37b32279e276619f4390ab8 ../ffv1
DIST_TUPLE +=		github rust-av flavors 833508af656d298c269f2397c8541a084264d992 ../flavors
DIST_TUPLE +=		fdo gstreamer gstreamer-rs c1f88371d75cbd69e7b84567cd705d1ba3bd22db ../gstreamer-rs

WANTLIB += ${MODCARGO_WANTLIB} cairo dav1d gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphene-1.0 gstbase-1.0 gstgl-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gstvideo-1.0 gtk-4 m pango-1.0 pangocairo-1.0 webpdemux

MODULES=		devel/cargo \
			devel/meson

MODCARGO_DIST_SUBDIR=	../cargo
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

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
DISABLED +=	audiofx claxon csound lewton spotify elevenlabs speechmatics
DISABLED +=	demucs audioparsers whisper
# generic -- -Dsodium-source=system
DISABLED +=	file originalbuffer gopbuffer sodium threadshare inter
DISABLED +=	streamgrouper
# mux
DISABLED +=	flavors isobmff
# net
DISABLED +=	aws hlssink3 mpegtslive ndi raptorq reqwest rtsp rtp icecast
DISABLED +=	webrtc webrtchttp quinn hlsmultivariantsink icecast deepgram
# text
DISABLED +=	textahead json regex textwrap textaccumulate
# utils
DISABLED +=	fallbackswitch livesync togglerecord tracers uriplaylistbin
DISABLED +=	validate
# video
DISABLED +=	cdg ffv1 gif hsv png rav1e debugseimetainserter vvdec skia

.for d in ${DISABLED}
CONFIGURE_ARGS +=   -D${d}=disabled
.endfor
###

pre-configure:
	${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
