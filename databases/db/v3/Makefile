# $OpenBSD: Makefile,v 1.26 2011/09/25 14:40:32 naddy Exp $

REV=		3
DBLIBDIR=	lib/db
VERSION=	${REV}.1.17
PKGNAME-main=	${DISTNAME}
PKGNAME-tcl=	db-tcl-${VERSION}
EPOCH-main=	0
EPOCH-tcl=	0
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
RUN_DEPENDS-tcl =	databases/db/v${REV}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
