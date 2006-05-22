# $OpenBSD: Makefile,v 1.1.1.1 2006/05/22 22:57:50 alek Exp $

COMMENT=	"small utility used to manipulate SGML and XML catalogs"

DISTNAME=	xmlcatmgr-2.2
CATEGORIES=	textproc

HOMEPAGE=	http://xmlcatmgr.sourceforge.net/

MAINTAINER=	Jasper Lievisse Adriaase <jasper@nedbsd.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
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
