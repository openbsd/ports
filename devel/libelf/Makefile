# $OpenBSD: Makefile,v 1.12 2015/08/15 08:03:20 jasper Exp $

PORTROACH=	skipv:0.8.14
PORTROACH_COMMENT=0.8.14 is actually 0.8.4, upstream mirror messed up

COMMENT=	read, modify, create ELF files on any arch

DISTNAME=	libelf-0.8.13
REVISION=	3
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

SHARED_LIBS=	elf 1.1

CATEGORIES=	devel
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://www.mr511.de/software/english.html
MASTER_SITES=	http://www.mr511.de/software/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=	2.13

CONFIGURE_STYLE=	autoconf

# disable compat mode to prevent clash with /usr/include/nlist.h
CONFIGURE_ARGS=		--disable-nls \
			--disable-compat

MAKE_FLAGS=		SHLIB_SFX=.so.$(LIBelf_VERSION)
DESTDIRNAME=		instroot

.include <bsd.port.mk>
