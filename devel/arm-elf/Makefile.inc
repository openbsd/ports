# $OpenBSD: Makefile.inc,v 1.1.1.1 2007/04/02 15:35:01 sturm Exp $

CONFIG=		arm-elf
PKGNAME?=	${CONFIG}-${DISTNAME}
CATEGORIES=	devel

MAINTAINER=	Sebastian Trahm <basti@schleifi.com>

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=arm-elf    \
		--disable-shared    \
		--disable-nls
