# $OpenBSD: Makefile,v 1.4 2009/10/13 00:00:37 ajacoutot Exp $

COMMENT=	read, modify, create ELF files on any arch
CATEGORIES=	devel

# The actual homepage is in german, this points to it.
HOMEPAGE=	http://directory.fsf.org/all/libelf.html
MASTER_SITES=	http://www.mr511.de/software/
DISTNAME=	libelf-0.8.12
SHARED_LIBS=	elf 1.0

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ARGS=		--disable-nls
MAKE_FLAGS=		SHLIB_SFX=.so.$(LIBelf_VERSION)
DESTDIRNAME=		instroot

# LGPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
