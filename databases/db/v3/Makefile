# $OpenBSD: Makefile,v 1.16 2008/10/28 11:53:33 steven Exp $

REVISION=	3
DBLIBDIR=	lib/db
VERSION=	${REVISION}.1.17
PKGNAME=	${DISTNAME}p8
PKGNAME-main=	${DISTNAME}p8
SHARED_LIBS +=	db                   3.1      # .0.0
SHARED_LIBS +=	db_cxx               4.0      # .0.0
SHARED_LIBS +=	db_tcl               4.0      # .0.0

CONFIGURE_STYLE=gnu dest

DEST_SUBDIR=
WANTLIB=c

WANTLIB-tcl=		m
LIB_DEPENDS-tcl=	${MODTCL_LIB_DEPENDS}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
