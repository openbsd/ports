# $OpenBSD: Makefile,v 1.2 2004/01/08 21:11:23 sturm Exp $

VERSION=		2.3
PATCHLEVEL=		.3
PKG_PATCHLEVEL=

COMMENT-bsddb=		"Berkeley db module for Python"

FULLPKGNAME-bsddb=	python-bsddb-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-ipv6

AUTOCONF_VERSION=	2.57

LIB_DEPENDS=		bz2::archivers/bzip2

FLAVORS=		no_bsddb

.if ${MACHINE_ARCH} == "alpha"
PATCH_LIST=		patch-* sup64-*
.elif ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-* gcc-*
.endif

.include <bsd.port.mk>
