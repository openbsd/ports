# $OpenBSD: Makefile,v 1.19 2006/01/17 14:25:32 naddy Exp $

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p8
DBLIBDIR=	lib/db4
SHARED_LIBS=	db	4.2 \
		db_cxx	5.0 \
		db_tcl	4.2

MASTER_SITES0=	${MASTER_SITES:S/snapshot/${VERSION}/}
PATCHFILES=	patch.${VERSION}.1:0 \
		patch.${VERSION}.2:0

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}
WANTLIB=	c

.include <bsd.port.mk>
