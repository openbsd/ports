# $OpenBSD: Makefile,v 1.35 2019/07/12 20:49:57 sthen Exp $

PKG_ARCH=	*

COMMENT=	technical documentation XML/SGML definitions

DISTNAME=	docbook-4.5
REVISION=	3
DIST_SUBDIR=	docbook
CATEGORIES=	textproc

HOMEPAGE=	https://www.oasis-open.org/docbook/

MASTER_SITES=	${HOMEPAGE} \
		https://www.docbook.org/
MASTER_SITES0=	https://spacehopper.org/mirrors/

DISTFILES=	sgml/2.4.1/docbk241.zip \
		sgml/3.0/docbk30.zip \
		sgml/3.1/docbk31.zip \
		sgml/4.0/docbk40.zip \
		sgml/4.1/docbk41.zip \
		xml/4.1/docbkx41.zip \
		xml/4.1.2/docbkx412.zip \
		xml/4.2/docbook-xml-4.2.zip \
		xml/4.3/docbook-xml-4.3.zip \
		xml/4.4/docbook-xml-4.4.zip \
		xml/4.5/docbook-xml-4.5.zip \
		examples.zip:0

# permission granted in dtd copyright notice
PERMIT_PACKAGE=	Yes

NO_BUILD=       Yes
NO_TEST=	Yes
SEPARATE_BUILD=	Yes

SGML_VERSIONS=		2.4.1 3.0 3.1 4.0 4.1
XML_VERSIONS_OLD=	4.1 4.1.2
XML_VERSIONS_NEW=	4.2 4.3 4.4 4.5

SGML_INSTDIR=	${PREFIX}/share/sgml/docbook
XML_INSTDIR=	${PREFIX}/share/xml/docbook

BUILD_DEPENDS=	textproc/libxml>=2.6.16p6
RUN_DEPENDS=	textproc/iso8879 \
		textproc/docbook-dsssl \
		textproc/libxml>=2.6.16p6

.for i in ${SGML_VERSIONS}
EXTRACT_CASES+=	*docbk${i:S/.//g}.zip) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIR}/$i;;
.endfor
.for i in ${XML_VERSIONS_OLD}
EXTRACT_CASES+=	*docbkx${i:S/.//g}.zip) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIR}/x$i;;
.endfor
.for i in ${XML_VERSIONS_NEW}
EXTRACT_CASES+=	*docbook-xml-$i.zip) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIR}/x$i;;
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
.for i in ${XML_VERSIONS_OLD} ${XML_VERSIONS_NEW}
	${INSTALL_DATA_DIR} ${XML_INSTDIR}/$i ${XML_INSTDIR}/$i/ent
	${INSTALL_DATA} ${WRKDIR}/x$i/*.* ${XML_INSTDIR}/$i
	${INSTALL_DATA} ${WRKDIR}/x$i/ent/* ${XML_INSTDIR}/$i/ent
	${INSTALL_DATA} ${FILESDIR}/xml_db${i:S/.//g}_catalog ${XML_INSTDIR}/$i/catalog
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/docbook.spec ${PREFIX}/share/libxml2
	sh ${FILESDIR}/makemastercatalog

.include <bsd.port.mk>
