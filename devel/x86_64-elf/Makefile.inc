# Could build on other archs, but only useful for amd64-specific
# ports so save time on other architectures.
ONLY_FOR_ARCHS?=	amd64

CONFIG?=	x86_64-none-elf
PKGNAME?=	x86_64-elf-${DISTNAME}
FULLPKGNAME?=	${PKGNAME}
CATEGORIES+=	devel

# GPLv3
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=${CONFIG}  \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror

EXTRACT_SUFX?=	.tar.xz
