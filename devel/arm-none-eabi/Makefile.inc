# $OpenBSD: Makefile.inc,v 1.2 2016/12/06 17:24:02 patrick Exp $

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

USE_GROFF?=	Yes
