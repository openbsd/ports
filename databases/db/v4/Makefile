# $OpenBSD: Makefile,v 1.21 2006/10/28 11:19:20 espie Exp $

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p9
DBLIBDIR=	lib/db4
SHARED_LIBS +=	db                   4.2      # .0.0
SHARED_LIBS +=	db_cxx               5.0      # .0.0
SHARED_LIBS +=	db_tcl               4.2      # .0.0

MASTER_SITES0=	${HOMEPAGE}db/update/${VERSION}/
PATCHFILES=	patch.${VERSION}.1:0 \
		patch.${VERSION}.2:0

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}
WANTLIB=	c

.include <bsd.port.mk>
