# $OpenBSD: Makefile,v 1.3 2003/12/11 06:49:17 sturm Exp $

REVISION=	4
VERSION=	${REVISION}.1.25
PKGNAME=	${DISTNAME}p1

MASTER_SITES0=	${MASTER_SITES:S/snapshot/4.1.25/}                                                                                              
PATCHFILES=	patch.${VERSION}.1:0

DEST_SUBDIR=	${REVISION}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
