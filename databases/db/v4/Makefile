# $OpenBSD: Makefile,v 1.5 2004/01/14 19:50:15 sturm Exp $

REVISION=	4
VERSION=	${REVISION}.2.52

MASTER_SITES0=	${MASTER_SITES:S/snapshot/${VERSION}/}
PATCHFILES=	patch.${VERSION}.1:0

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
