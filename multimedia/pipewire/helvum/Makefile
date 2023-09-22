# XXX needs eventfd from rust libc (there's no epoll-shim rust) and rust pw_sys

COMMENT=		GTK patchbay for pipewire

PW_PROJECT=		helvum
PW_VERSION=		0.4.1
# needed because the devel/cargo module resets the list
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=		audio

MODULES=		devel/cargo

#BUILD_DEPENDS=		devel/appstream-glib

# libclang.so
MODULES +=		lang/clang
MODCARGO_ENV=		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			LD_LIBRARY_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

#MODCARGO_CRATES_UPDATE=	libspa libspa-sys

LIB_DEPENDS=		multimedia/pipewire/pipewire \
			x11/gtk+4

pre-configure:
	${MODCARGO_configure}

pre-build:
	${MODCARGO_BUILD_TARGET}

.include "crates.inc"

.include <bsd.port.mk>
