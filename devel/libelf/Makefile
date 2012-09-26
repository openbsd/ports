# $OpenBSD: Makefile,v 1.8 2012/09/26 15:04:09 sthen Exp $

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
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=	2.13

CONFIGURE_STYLE=	autoconf

# disable compat mode to prevent clash with /usr/include/nlist.h
CONFIGURE_ARGS=		--disable-nls \
			--disable-compat

MAKE_FLAGS=		SHLIB_SFX=.so.$(LIBelf_VERSION)
DESTDIRNAME=		instroot

.include <bsd.port.mk>
