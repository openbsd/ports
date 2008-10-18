# $OpenBSD: Makefile,v 1.32 2008/10/18 11:55:57 djm Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=			compiler hangs on py-Checker for example
.endif

VERSION=		2.3
PATCHLEVEL=		.6
PKG_PATCHLEVEL=		p6
SHARED_LIBS=		python2.3 1.0

# needed for www/zope
THREAD_STACK_SIZE=	0x100000

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

ALL_TARGET?=	all ${WRKSRC}/Lib/plat-openbsd4

.include <bsd.port.mk>
