# $OpenBSD: Makefile,v 1.10 2005/03/03 22:23:56 alek Exp $

VERSION=	2.2
PATCHLEVEL=	.3
PKG_PATCHLEVEL=	p2

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup64-*
.endif

.include <bsd.port.mk>

