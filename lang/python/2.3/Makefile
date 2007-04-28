# $OpenBSD: Makefile,v 1.25 2007/04/28 10:06:24 bernd Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=			"compiler hangs on py-Checker for example"
.endif

VERSION=		2.3
PATCHLEVEL=		.6
PKG_PATCHLEVEL=		p1
SHARED_LIBS=		python2.3 0.0

# needed for www/zope
THREAD_STACK_SIZE=	0x100000

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
