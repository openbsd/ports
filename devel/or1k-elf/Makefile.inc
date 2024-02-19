CONFIG=		or1k-unknown-elf
PKGNAME?=	or1k-elf-${DISTNAME}
CATEGORIES?=	devel

MAINTAINER?=	Mark Kettenis <kettenis@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=${CONFIG}	\
		--disable-shared	\
		--disable-nls		\
		--disable-werror

EXTRACT_SUFX?=	.tar.xz
