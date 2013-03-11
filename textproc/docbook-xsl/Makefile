# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:41 espie Exp $

COMMENT=	docbook XSL modular stylesheet

DISTNAME=	docbook-xsl-1.68.1
REVISION =	5
CATEGORIES=	textproc

HOMEPAGE=	http://docbook.sourceforge.net/projects/xsl/

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docbook/}

BUILD_DEPENDS=	textproc/libxml
RUN_DEPENDS=	textproc/docbook \
		textproc/libxslt

NO_TEST=	Yes
PKG_ARCH=	*

DIR=		share/xsl/docbook
INSTDIR=	${PREFIX}/${DIR}
CATALOG_DIR=	${LOCALBASE}/${DIR}
DOCSDIR=	${PREFIX}/share/doc/xsl/docbook
COPYDIRS=	common fo extensions html htmlhelp images \
		javahelp lib manpages params template xhtml

do-build:
	cd ${WRKSRC} && ./INSTALL

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR} ${DOCSDIR}
	(cd ${WRKSRC}/doc && ${TAR} -cf - . | ${TAR} -xf - -C${DOCSDIR})
	(cd ${WRKSRC} && \
		${TAR} -cf - VERSION ${COPYDIRS} | ${TAR} -xf - -C${INSTDIR})
	${INSTALL_DATA} ${WRKSRC}/catalog.xml ${INSTDIR}/catalog.xml
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/docbook-xsl.spec ${PREFIX}/share/libxml2

post-install:
	@perl -pi -e 's#rewritePrefix=\".*?\"#rewritePrefix="${CATALOG_DIR}/"#g' ${INSTDIR}/catalog.xml
	
.include <bsd.port.mk>
