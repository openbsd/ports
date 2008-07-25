# $OpenBSD: Makefile,v 1.17 2008/07/25 19:38:46 sthen Exp $

VERSION=		2.4
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p7
SHARED_LIBS=		python2.4 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
