# $OpenBSD: Makefile,v 1.9 2004/11/16 02:10:56 espie Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=			"compiler hangs on py-Checker for example"
.endif

VERSION=		2.3
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p1

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
