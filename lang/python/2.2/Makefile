# $OpenBSD: Makefile,v 1.7 2004/02/29 16:39:39 naddy Exp $

VERSION=	2.2
PATCHLEVEL=	.3
PKG_PATCHLEVEL=	p0

.if (${MACHINE_ARCH} == "alpha") || (${MACHINE_ARCH} == "sparc64")
PATCH_LIST=	patch-* sup64-*
.endif

.include <bsd.port.mk>

