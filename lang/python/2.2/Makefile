# $OpenBSD: Makefile,v 1.9 2004/11/16 02:10:56 espie Exp $

VERSION=	2.2
PATCHLEVEL=	.3
PKG_PATCHLEVEL=	p1

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup64-*
.endif

.include <bsd.port.mk>

