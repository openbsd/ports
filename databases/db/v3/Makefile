# $OpenBSD: Makefile,v 1.24 2010/11/26 14:23:31 espie Exp $

REV=		3
DBLIBDIR=	lib/db
VERSION=	${REV}.1.17
PKGNAME-main=	${DISTNAME}
PKGNAME-tcl=	db-tcl-${VERSION}
REVISION-main=	11
REVISION-tcl=	8
SHARED_LIBS +=	db                   3.1      # .0.0
SHARED_LIBS +=	db_cxx               4.0      # .0.0
SHARED_LIBS +=	db_tcl               4.0      # .0.0
PKGSPEC-main =	db->=3,<4
# XXX PKGSPEC-tcl ?

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c

WANTLIB-tcl =		m ${MODTCL_WANTLIB}
LIB_DEPENDS-tcl =	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS-tcl =	databases/db/v${REV}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
