# $OpenBSD: Makefile,v 1.15 2006/11/25 22:54:27 steven Exp $

REVISION=	3
DBLIBDIR=	lib/db
VERSION=	${REVISION}.1.17
PKGNAME=	${DISTNAME}p8
PKGNAME-main=	${DISTNAME}p8
SHARED_LIBS +=	db                   3.1      # .0.0
SHARED_LIBS +=	db_cxx               4.0      # .0.0
SHARED_LIBS +=	db_tcl               3.1      # .0.0

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c

WANTLIB-tcl=		m
LIB_DEPENDS-tcl=	tcl${TCL_VERSION:S/.//}:tcl-${TCL_VERSION}.*:lang/tcl/${TCL_VERSION}

.include <bsd.port.mk>
