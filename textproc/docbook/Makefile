# $OpenBSD: Makefile,v 1.9 2000/10/24 13:32:20 avsm Exp $

DISTNAME=	docbook-4.1
CATEGORIES=	textproc
NEED_VERSION= 	1.336

ROOT_SITE=	http://www.oasis-open.org/docbook/sgml
MIRROR_SITE=	http://www.docbook.org/sgml

MASTER_SITES0=	${ROOT_SITE}/2.4.1/ 
MASTER_SITES1=	${ROOT_SITE}/3.0/
MASTER_SITES2=	${ROOT_SITE}/3.1/ ${MIRROR_SITE}/3.1/
MASTER_SITES3=	${ROOT_SITE}/4.0/ ${MIRROR_SITE}/4.0/
MASTER_SITES4=	${ROOT_SITE}/4.1/ ${MIRROR_SITE}/4.1/

DISTFILES=	docbk241.zip:0 docbk30.zip:1 docbk31.zip:2 docbk40.zip:3 docbk41.zip:4

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# permission granted in dtd copyright notice
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes
SEPARATE_BUILD=	concurrent
DB_VERSIONS=	2.4.1 3.0 3.1 4.0 4.1

INSTDIR=	${PREFIX}/share/sgml/docbook
RUN_DEPENDS=	${PREFIX}/share/sgml/iso8879/catalog::textproc/iso8879 \
		${INSTDIR}/dsssl/modular/catalog::textproc/docbook-modular

.for i in ${DB_VERSIONS}
EXTRACT_CASES+=	*${i:S/.//g}.zip) unzip -qa ${DISTDIR}/$$archive -d ${WRKDIR}/$i;;
.endfor

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/catalog ${PREFIX}/share/sgml
	${INSTALL_DATA} ${FILESDIR}/db_catalog ${INSTDIR}/catalog
.for i in ${DB_VERSIONS}
	${INSTALL_DATA_DIR} ${INSTDIR}/$i
	${INSTALL_DATA} ${WRKDIR}/$i/* ${INSTDIR}/$i
	${INSTALL_DATA} ${FILESDIR}/db${i:S/.//g}_catalog ${INSTDIR}/$i/catalog
.endfor

.include <bsd.port.mk>
