# $OpenBSD: Makefile,v 1.2 2005/08/10 02:14:13 jolan Exp $

VERSION=		2.4
PATCHLEVEL=		.1
PKG_PATCHLEVEL=		p0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
