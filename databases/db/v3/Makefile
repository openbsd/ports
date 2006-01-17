# $OpenBSD: Makefile,v 1.12 2006/01/17 14:25:32 naddy Exp $

REVISION=	3
DBLIBDIR=	lib/db
VERSION=	${REVISION}.1.17
PKGNAME=	${DISTNAME}p6
SHARED_LIBS=	db	3.1 \
		db_cxx	4.0 \
		db_tcl	3.1

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c m

.include <bsd.port.mk>
