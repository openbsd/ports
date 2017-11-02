# $OpenBSD: Makefile.inc,v 1.1.1.1 2017/11/02 18:30:57 bentley Exp $

CONFIG=		xtensa-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES+=	devel

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=xtensa-elf    \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror

EXTRACT_SUFX?=	.tar.bz2
