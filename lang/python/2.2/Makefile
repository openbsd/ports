# $OpenBSD: Makefile,v 1.8 2004/04/06 02:39:23 brad Exp $

VERSION=	2.2
PATCHLEVEL=	.3
PKG_PATCHLEVEL=	p0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup64-*
.endif

.include <bsd.port.mk>

