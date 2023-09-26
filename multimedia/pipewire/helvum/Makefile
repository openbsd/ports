# XXX needs eventfd from rust libc (there's no epoll-shim rust) and rust pw_sys

COMMENT=		GTK patchbay for pipewire

PW_PROJECT=		helvum
PW_VERSION=		0.4.1

CATEGORIES=		audio

MODULES=		devel/cargo

#BUILD_DEPENDS=		devel/appstream-glib

LIB_DEPENDS=		multimedia/pipewire/pipewire \
			x11/gtk+4

# needs eventfd
LIB_DEPENDS +=		devel/epoll-shim
#MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib -C link-arg=-lepoll-shim
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib -lepoll-shim

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
