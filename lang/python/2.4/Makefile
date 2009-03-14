# $OpenBSD: Makefile,v 1.21 2009/03/14 12:31:15 espie Exp $

VERSION=		2.4
PATCHLEVEL=		.6
PKG_PATCHLEVEL=		p0
SHARED_LIBS=		python2.4 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

ALL_TARGET?=	all ${WRKSRC}/Lib/plat-openbsd4

.include <bsd.port.mk>
