# $OpenBSD: Makefile,v 1.5 2001/02/21 23:43:58 avsm Exp $

DISTNAME=	docbook-modular-1.62
CATEGORIES=    	textproc print
NEED_VERSION=	1.354

HOMEPAGE=	http://www.nwalsh.com/docbook/dsssl/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.nwalsh.com/docbook/dsssl/
EXTRACT_SUFX=	.zip	
DISTFILES=	db162${EXTRACT_SUFX} db162d${EXTRACT_SUFX}

SEPARATE_BUILD=	concurrent
NO_BUILD=	Yes

INST_DIR=	${PREFIX}/share/sgml/docbook/dsssl/modular
DOC_DIR=	${PREFIX}/share/doc/docbook-modular
INST_SUBDIRS=	. common lib print html bin dtds/olink dtds/imagelib \
		dtds/html dtds/decls dtds/dbdsssl olink test test/xml \
		test/imagelib test/cases contrib/subdoc contrib/renumberinpart \
		contrib/print contrib/imagemap contrib/html images \
		images/callouts frames
DOC_SUBDIRS=	. html lib print

do-install:
.for i in ${INST_SUBDIRS}
	${INSTALL_DATA_DIR} ${INST_DIR}/$i
	${INSTALL_DATA} `find ${WRKDIR}/docbook/$i -maxdepth 1 -type f` ${INST_DIR}/$i
.endfor
.for i in ${DOC_SUBDIRS}
	${INSTALL_DATA_DIR} ${DOC_DIR}/$i
	${INSTALL_DATA} `find ${WRKDIR}/docbook/doc/$i -maxdepth 1 -type f` ${DOC_DIR}/$i
.endfor

.include <bsd.port.mk>
