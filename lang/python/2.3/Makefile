# $OpenBSD: Makefile,v 1.6 2004/08/08 15:38:00 xsa Exp $

VERSION=		2.3
PATCHLEVEL=		.4
PKG_PATCHLEVEL=

COMMENT-bsddb=		"Berkeley db module for Python"

FULLPKGNAME-bsddb=	python-bsddb-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-ipv6

# needed for www/zope
THREAD_STACK_SIZE=	0x100000

AUTOCONF_VERSION=	2.57

LIB_DEPENDS=		bz2::archivers/bzip2

FLAVORS=		no_bsddb

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
