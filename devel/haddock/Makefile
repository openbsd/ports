# $OpenBSD: Makefile,v 1.1.1.1 2003/07/25 00:26:13 avsm Exp $

COMMENT=	"documentation tool for Haskell"

V=		0.4
DISTNAME=	haddock-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/haddock/
MAINTAINER=	Don Stewart <dons@cse.unsw.edu.au>

MODULES=	gettext iconv ghc

MASTER_SITES=	http://www.haskell.org/haddock/
DISTFILES=	${DISTNAME}-src.tar.gz

BUILD_DEPENDS+=	::textproc/docbook	::textproc/docbook-dsssl \
		::textproc/sgmlformat	::textproc/openjade      \
		::textproc/iso8879	::textproc/linuxdoc      \
		::textproc/html		::print/jadetex          \
		::textproc/expat 

NO_REGRESS=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog
MAKE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog

DOC_DIR=	${PREFIX}/share/doc/haddock

post-build:
	@(cd ${WRKSRC}/haddock/doc ; ${MAKE_ENV} ${GMAKE} html)

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	@(cp -R ${WRKSRC}/haddock/doc/haddock/* ${DOC_DIR})

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.include <bsd.port.mk>
