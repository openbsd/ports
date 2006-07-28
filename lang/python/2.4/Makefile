# $OpenBSD: Makefile,v 1.7 2006/07/28 22:36:41 steven Exp $

VERSION=		2.4
PATCHLEVEL=		.3
PKG_PATCHLEVEL=		p0
SHARED_LIBS=		python2.4 0.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
