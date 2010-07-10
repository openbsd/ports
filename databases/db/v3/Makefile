# $OpenBSD: Makefile,v 1.18 2010/07/10 20:06:54 naddy Exp $

REV=		3
DBLIBDIR=	lib/db
VERSION=	${REV}.1.17
PKGNAME-main=	${DISTNAME}p8
PKGNAME-tcl=	db-tcl-${VERSION}p5
SHARED_LIBS +=	db                   3.1      # .0.0
SHARED_LIBS +=	db_cxx               4.0      # .0.0
SHARED_LIBS +=	db_tcl               4.0      # .0.0

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c

WANTLIB-tcl=		m
LIB_DEPENDS-tcl=	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS-tcl=	:db->=3,<4:databases/db/v${REV}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
