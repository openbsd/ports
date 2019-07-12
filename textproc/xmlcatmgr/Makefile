# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:17 sthen Exp $

COMMENT=	small utility used to manipulate SGML and XML catalogs

DISTNAME=	xmlcatmgr-2.2
REVISION=	2
CATEGORIES=	textproc

HOMEPAGE=	http://xmlcatmgr.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlcatmgr/}

CONFIGURE_STYLE=gnu

EXAMPLE_DIR=	${PREFIX}/share/examples/xmlcatmgr

post-build:         
		@echo "Creating SGML sample catalogs..."
		${WRKSRC}/xmlcatmgr -sc ${WRKDIR}/catalog.etc.sgml create
		${WRKSRC}/xmlcatmgr -sc ${WRKDIR}/catalog.sgml create
		${WRKSRC}/xmlcatmgr -sc ${WRKDIR}/catalog.etc.sgml add \
			CATALOG ${PREFIX}/share/sgml/catalog
		@echo "Creating XML sample catalogs..."
		${WRKSRC}/xmlcatmgr -c ${WRKDIR}/catalog.etc.xml create
		${WRKSRC}/xmlcatmgr -c ${WRKDIR}/catalog.xml create
		${WRKSRC}/xmlcatmgr -c ${WRKDIR}/catalog.etc.xml add \
			nextCatalog ${PREFIX}/share/xml/catalog

post-install:         
		${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
		${INSTALL_DATA} ${WRKDIR}/catalog.etc.sgml ${EXAMPLE_DIR}
		${INSTALL_DATA} ${WRKDIR}/catalog.etc.xml ${EXAMPLE_DIR}
		${INSTALL_DATA} ${WRKDIR}/catalog.sgml \
			${EXAMPLE_DIR}/catalog.share.sgml
		${INSTALL_DATA} ${WRKDIR}/catalog.xml \
			${EXAMPLE_DIR}/catalog.share.xml

.include <bsd.port.mk>
