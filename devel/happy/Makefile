# $OpenBSD: Makefile,v 1.2 2003/07/31 01:19:16 avsm Exp $

COMMENT=	"parser generator for the functional language Haskell"

V=		1.13
DISTNAME=	happy-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/ghc/
MAINTAINER=	Don Stewart <dons@cse.unsw.edu.au>

MODULES=	ghc

MASTER_SITES=	http://www.haskell.org/happy/dist/${V}/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/happy/

DISTFILES=	happy-${V}-src.tar.gz     \
		happy-regress-${V}.tar.gz:0

BUILD_DEPENDS+=	::textproc/docbook      ::textproc/docbook-dsssl\
		::textproc/sgmlformat   ::textproc/openjade     \
		::textproc/iso8879      ::textproc/linuxdoc     \
		::textproc/html         ::print/jadetex         \
		::textproc/expat

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog
MAKE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog

DOC_DIR=	${PREFIX}/share/doc/happy

post-build:
	@(cd ${WRKSRC}/happy/doc ; ${MAKE_ENV} ${GMAKE} html)

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	@(cp -R ${WRKSRC}/happy/doc/happy/* ${DOC_DIR})

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
