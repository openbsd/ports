# $OpenBSD: Makefile,v 1.33 2021/11/22 13:55:54 espie Exp $

REV=		3
DBLIBDIR=	lib/db
VERSION=	${REV}.1.17
EPOCH=	0

REVISION-main = 3
REVISION-tcl =	2

SHARED_LIBS +=	db                   3.1      # .0.0
SHARED_LIBS +=	db_cxx               4.0      # .0.0
SHARED_LIBS +=	db_tcl               4.0      # .0.0

PKGSPEC-main =	db->=3,<4|db->=3v0,<4v0
PKGSPEC-tcl =	db-tcl->=3,<4|db-tcl->=3v0,<4v0

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c

WANTLIB-tcl =		m ${MODTCL_WANTLIB}
LIB_DEPENDS-tcl =	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS-tcl =	${BUILD_PKGPATH}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
