# $OpenBSD: Makefile,v 1.27 2010/04/15 14:11:01 ajacoutot Exp $

VERSION=		2.4
PATCHLEVEL=		.6
PKG_PATCHLEVEL=		p3
SHARED_LIBS=		python2.4 1.0

.if ${MACHINE_ARCH} == "mips64"
BROKEN = Floating point exception while generating pyc objects
.endif

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
PATCH_LIST=		patch-* sup64-*
.endif

ALL_TARGET?=	all ${WRKSRC}/Lib/plat-openbsd4

.include <bsd.port.mk>
