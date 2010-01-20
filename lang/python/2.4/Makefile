# $OpenBSD: Makefile,v 1.24 2010/01/20 08:15:21 espie Exp $

VERSION=		2.4
PATCHLEVEL=		.6
PKG_PATCHLEVEL=		p2
SHARED_LIBS=		python2.4 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "mips64"
PATCH_LIST=		patch-* sup64-*
.endif

ALL_TARGET?=	all ${WRKSRC}/Lib/plat-openbsd4

.include <bsd.port.mk>
