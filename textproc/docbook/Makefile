# $OpenBSD: Makefile,v 1.15 2002/06/09 05:37:15 wilfried Exp $

COMMENT=	"technical documentation XML/SGML definitions"

DISTNAME=	docbook-4.1.2
DIST_SUBDIR=	docbook
CATEGORIES=	textproc
NEED_VERSION= 	1.496

ROOT_SITE=	http://www.oasis-open.org/docbook/
MIRROR_SITE=	http://www.docbook.org/
HOMEPAGE=	http://www.oasis-open.org/docbook/

MASTER_SITES0=	${ROOT_SITE}/sgml/2.4.1/ 
MASTER_SITES1=	${ROOT_SITE}/sgml/3.0/
MASTER_SITES2=	${ROOT_SITE}/sgml/3.1/ ${MIRROR_SITE}/sgml/3.1/
MASTER_SITES3=	${ROOT_SITE}/sgml/4.0/ ${MIRROR_SITE}/sgml/4.0/
MASTER_SITES4=	${ROOT_SITE}/sgml/4.1/ ${MIRROR_SITE}/sgml/4.1/
MASTER_SITES5=	${ROOT_SITE}/xml/4.1/ ${MIRROR_SITE}/xml/4.1/
MASTER_SITES6=	${ROOT_SITE}/xml/4.1.2/ ${MIRROR_SITE}/xml/4.1.2/
MASTER_SITES7=	http://www.docbook.org/tdg/

DISTFILES=	docbk241.zip:0 docbk30.zip:1 docbk31.zip:2 docbk40.zip:3 docbk41.zip:4 docbkx41.zip:5 docbkx412.zip:6 examples.zip:7

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# permission granted in dtd copyright notice
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes
SEPARATE_BUILD=	concurrent

SGML_VERSIONS=	2.4.1 3.0 3.1 4.0 4.1
XML_VERSIONS=	4.1 4.1.2

SGML_INSTDIR=	${PREFIX}/share/sgml/docbook
XML_INSTDIR=	${PREFIX}/share/xml/docbook

RUN_DEPENDS=	::textproc/iso8879 \
		:docbook-dsssl-*:textproc/docbook-dsssl

.for i in ${SGML_VERSIONS} ${XML_VERSIONS:C/(.+)/x\1/g}
EXTRACT_CASES+=	*docbk${i:S/.//g}.zip) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIR}/$i;;
.endfor

do-install:
	${INSTALL_DATA_DIR} ${SGML_INSTDIR} ${XML_INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/sgml_catalog ${PREFIX}/share/sgml/catalog
	${INSTALL_DATA} ${FILESDIR}/sgml_db_catalog ${SGML_INSTDIR}/catalog
	${INSTALL_DATA} ${FILESDIR}/xml_catalog ${PREFIX}/share/xml/catalog
	${INSTALL_DATA} ${FILESDIR}/xml_db_catalog ${XML_INSTDIR}/catalog
.for i in ${SGML_VERSIONS}
	${INSTALL_DATA_DIR} ${SGML_INSTDIR}/$i
	${INSTALL_DATA} ${WRKDIR}/$i/* ${SGML_INSTDIR}/$i
	${INSTALL_DATA} ${FILESDIR}/sgml_db${i:S/.//g}_catalog ${SGML_INSTDIR}/$i/catalog
.endfor
.for i in ${XML_VERSIONS}
	${INSTALL_DATA_DIR} ${XML_INSTDIR}/$i ${XML_INSTDIR}/$i/ent
	${INSTALL_DATA} ${WRKDIR}/x$i/*.* ${XML_INSTDIR}/$i
	${INSTALL_DATA} ${WRKDIR}/x$i/ent/* ${XML_INSTDIR}/$i/ent
	${INSTALL_DATA} ${FILESDIR}/xml_db${i:S/.//g}_catalog ${XML_INSTDIR}/$i/catalog
.endfor

.include <bsd.port.mk>
