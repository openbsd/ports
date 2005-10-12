# $OpenBSD: Makefile,v 1.3 2005/10/12 02:41:41 fgsch Exp $

VERSION=		2.4
PATCHLEVEL=		.1
PKG_PATCHLEVEL=		p1

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
