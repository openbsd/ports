# $OpenBSD: Makefile.inc,v 1.3 2017/06/02 23:17:07 schwarze Exp $

CONFIG?=	arm-none-eabi
PKGNAME?=	${CONFIG}-${DISTNAME}
FULLPKGNAME?=	${PKGNAME}
CATEGORIES+=	devel

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=${CONFIG}  \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror

EXTRACT_SUFX?=	.tar.bz2
