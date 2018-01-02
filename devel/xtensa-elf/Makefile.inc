# $OpenBSD: Makefile.inc,v 1.2 2018/01/02 11:16:37 bentley Exp $

CONFIG=		xtensa-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES+=	devel

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE_CDROM=   Yes

# XXX at least gmkdir gets picked up if present
BUILD_DEPENDS +=	sysutils/coreutils

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=xtensa-elf    \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror

EXTRACT_SUFX?=	.tar.bz2
