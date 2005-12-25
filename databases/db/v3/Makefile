# $OpenBSD: Makefile,v 1.11 2005/12/25 20:35:42 sturm Exp $

REVISION=	3
DBLIBDIR=	lib/db
VERSION=	${REVISION}.1.17
PKGNAME=	${DISTNAME}p5
SHARED_LIBS=	db	3.1 \
		db_cxx	3.1 \
		db_tcl	3.1

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c m

.include <bsd.port.mk>
