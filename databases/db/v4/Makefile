# $OpenBSD: Makefile,v 1.1.1.1 2003/12/08 17:37:52 sturm Exp $

REVISION=	4
VERSION=	${REVISION}.1.25

MASTER_SITES0=	${MASTER_SITES:S/snapshot/4.1.25/}                                                                                              
PATCHFILES=	patch.${VERSION}.1:0

DEST_SUBDIR=	${REVISION}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
