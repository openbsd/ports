# $OpenBSD: Makefile.inc,v 1.7 2013/03/11 10:50:00 espie Exp $

CONFIG=		arm-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES+=	devel devel/arm-elf

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

USE_GROFF?=	Yes
