# $OpenBSD: Makefile.inc,v 1.4 2021/10/26 14:37:57 tracey Exp $

CONFIG=		xtensa-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES+=	devel

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE=	Yes

# XXX at least gmkdir gets picked up if present
BUILD_DEPENDS +=	sysutils/coreutils

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=xtensa-elf    \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror \
		--without-isl

EXTRACT_SUFX?=	.tar.bz2
