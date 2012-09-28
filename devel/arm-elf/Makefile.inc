# $OpenBSD: Makefile.inc,v 1.6 2012/09/28 18:55:27 sthen Exp $

CONFIG=		arm-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES+=	devel devel/arm-elf

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=arm-elf    \
		--disable-shared    \
		--disable-nls	    \
		--disable-werror

EXTRACT_SUFX?=	.tar.bz2

USE_GROFF?=	Yes
