# $OpenBSD: Makefile,v 1.17 2005/08/17 16:10:03 espie Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=			"compiler hangs on py-Checker for example"
.endif

VERSION=		2.3
PATCHLEVEL=		.5
PKG_PATCHLEVEL=		p1

# needed for www/zope
THREAD_STACK_SIZE=	0x100000

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
