# $OpenBSD: Makefile,v 1.20 2006/10/18 11:05:55 steven Exp $

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p9
DBLIBDIR=	lib/db4
SHARED_LIBS=	db	4.2 \
		db_cxx	5.0 \
		db_tcl	4.2

MASTER_SITES0=	${HOMEPAGE}db/update/${VERSION}/
PATCHFILES=	patch.${VERSION}.1:0 \
		patch.${VERSION}.2:0

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}
WANTLIB=	c

.include <bsd.port.mk>
