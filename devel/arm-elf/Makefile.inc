# $OpenBSD: Makefile.inc,v 1.2 2010/10/22 15:18:48 jasper Exp $

CONFIG=		arm-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES=	devel

MAINTAINER=	Sebastian Trahm <basti@schleifi.com>

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: /usr/local/share/doc/newlib
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
