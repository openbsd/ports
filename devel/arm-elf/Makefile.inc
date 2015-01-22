# $OpenBSD: Makefile.inc,v 1.9 2015/01/22 22:17:46 naddy Exp $

CONFIG=		arm-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES+=	devel

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=arm-elf    \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror

EXTRACT_SUFX?=	.tar.bz2
