# $OpenBSD: Makefile,v 1.4 2004/01/10 08:36:28 sturm Exp $

REVISION=	4
VERSION=	${REVISION}.1.25
PKGNAME=	${DISTNAME}p2

MASTER_SITES0=	${MASTER_SITES:S/snapshot/4.1.25/}                                                                                              
PATCHFILES=	patch.${VERSION}.1:0

DEST_SUBDIR=	${REVISION}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
