# $OpenBSD: Makefile,v 1.1.1.1 2003/07/23 19:09:34 avsm Exp $

COMMENT=	"parser generator for Haskell 98"

V=		1.13
DISTNAME=	happy-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/ghc/
MAINTAINER=	Don Stewart <dons@cse.unsw.edu.au>

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	ghc

HASKELL=	http://www.haskell.org
MASTER_SITES=	${HASKELL}/happy/dist/${V}/
MASTER_SITES0=	${HASKELL}/happy/
MASTER_SITES1=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/happy/

DOC_FILE=	happy-${V}-html
DOC_DIR=	${PREFIX}/share/doc/happy

DISTFILES=	happy-${V}-src.tar.gz     \
		${DOC_FILE:C/(.+)/\1.tar.gz:0/g} \
		happy-regress-${V}.tar.gz:1

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	@cp -R ${WRKDIR}/${DOC_FILE}/* ${DOC_DIR}

.include <bsd.port.mk>
