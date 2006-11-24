# $OpenBSD: Makefile,v 1.10 2006/11/24 20:48:23 steven Exp $

VERSION=		2.4
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p0
SHARED_LIBS=		python2.4 0.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
