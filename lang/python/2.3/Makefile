# $OpenBSD: Makefile,v 1.3 2004/02/29 16:39:39 naddy Exp $

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

.if (${MACHINE_ARCH} == "alpha") || (${MACHINE_ARCH} == "sparc64")
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
