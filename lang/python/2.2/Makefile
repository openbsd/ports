# $OpenBSD: Makefile,v 1.6 2004/01/08 21:11:23 sturm Exp $

VERSION=	2.2
PATCHLEVEL=	.3
PKG_PATCHLEVEL=	p0

.if ${MACHINE_ARCH} == "alpha"
PATCH_LIST=	patch-* sup64-*
.elif ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup64-* gcc-*
.endif

.include <bsd.port.mk>

