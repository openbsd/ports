# $OpenBSD: Makefile,v 1.5 2005/02/14 02:17:34 dons Exp $

COMMENT=	"lexical analyser generator for Haskell"

V=		2.0
DISTNAME=	alex-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/alex/
MAINTAINER=	Don Stewart <dons@openbsd.org>

MODULES=	lang/ghc

MASTER_SITES=	http://www.haskell.org/alex/dist/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/alex/
DISTFILES=	${DISTNAME}-src.tar.gz alex-regress-${V}.tgz:0

BUILD_DEPENDS+=	::textproc/docbook	::textproc/docbook-dsssl \
		::textproc/sgmlformat	::textproc/openjade      \
		::textproc/iso8879	::textproc/linuxdoc      \
		::textproc/html		::print/jadetex          \
		::textproc/expat 

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog
MAKE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog

DOC_DIR=	${PREFIX}/share/doc/alex

post-build:
	@(cd ${WRKSRC}/alex/doc ; ${MAKE_ENV} ${GMAKE} html)

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	@cp -R ${WRKSRC}/alex/doc/alex/* ${DOC_DIR}

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gmp m

.include <bsd.port.mk>
