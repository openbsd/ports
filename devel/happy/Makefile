# $OpenBSD: Makefile,v 1.8 2007/05/04 09:56:02 bernd Exp $

COMMENT=	"parser generator for the functional language Haskell"

V=		1.14
DISTNAME=	happy-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/ghc/
MAINTAINER=	Don Stewart <dons@openbsd.org>

MODULES=	lang/ghc

MASTER_SITES=	http://www.haskell.org/happy/dist/${V}/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/happy/

DISTFILES=	happy-${V}-src.tar.gz     \
		happy-regress-${V}.tar.bz2:0

BUILD_DEPENDS+=	::textproc/docbook      ::textproc/docbook-dsssl\
		::textproc/sgmlformat   ::textproc/openjade     \
		::textproc/iso8879      ::textproc/linuxdoc     \
		::textproc/html         ::print/jadetex

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog
MAKE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog

DOC_DIR=	${PREFIX}/share/doc/happy

post-build:
	@cd ${WRKSRC}/happy/doc ; ${MAKE_ENV} ${GMAKE} html

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	@cp -R ${WRKSRC}/happy/doc/happy/* ${DOC_DIR}

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gmp m

.include <bsd.port.mk>
