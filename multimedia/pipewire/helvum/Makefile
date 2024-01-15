COMMENT=		GTK patchbay for pipewire

PW_PROJECT=		helvum
PW_VERSION=		0.5.1
REVISION=		3

WANTLIB += ${MODCARGO_WANTLIB} adwaita-1 cairo epoll-shim gio-2.0
WANTLIB += glib-2.0 gobject-2.0 graphene-1.0 gtk-4 pipewire-0.3

MODULES=		devel/cargo

BUILD_DEPENDS=		devel/appstream-glib

LIB_DEPENDS=		multimedia/pipewire/pipewire,-libs \
			x11/gnome/libadwaita

# needs eventfd
LIB_DEPENDS +=		devel/epoll-shim
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib -lepoll-shim

RUN_DEPENDS=		multimedia/pipewire/pipewire

# libclang.so
MODULES +=		lang/clang
MODCARGO_ENV +=		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			LD_LIBRARY_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

pre-configure:
	${MODCARGO_configure}

pre-build:
	${MODCARGO_BUILD_TARGET}

.include "crates.inc"

.include <bsd.port.mk>
