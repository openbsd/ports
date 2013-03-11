# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:09 espie Exp $

COMMENT=	read, modify, create ELF files on any arch

DISTNAME=	libelf-0.8.13
REVISION=	1

SHARED_LIBS=	elf 1.1

CATEGORIES=	devel
DPB_PROPERTIES=	parallel

# The actual homepage is in german, this points to it.
HOMEPAGE=	http://directory.fsf.org/all/libelf.html
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
