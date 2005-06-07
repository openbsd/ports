# $OpenBSD: Makefile,v 1.1.1.1 2005/06/07 01:12:54 alek Exp $

VERSION=		2.4
PATCHLEVEL=		.1
PKG_PATCHLEVEL=		

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
