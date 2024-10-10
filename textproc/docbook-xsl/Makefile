COMMENT=	docbook XSL modular stylesheet

VERSION=	1.79.1
DISTNAME=	docbook-xsl-${VERSION}
CATEGORIES=	textproc

HOMEPAGE=	https://docbook.sourceforge.net/projects/xsl/

# MIT/X Consortium License
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.sourceforge.net/project/docbook/docbook-xsl/${VERSION}/
EXTRACT_SUFX=	.tar.bz2

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

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR} ${DOCSDIR}
	cd ${WRKSRC}/doc && ${TAR} -cf - . | ${TAR} -xf - -C${DOCSDIR}
	cd ${WRKSRC} && \
		${TAR} -cf - VERSION ${COPYDIRS} | ${TAR} -xf - -C${INSTDIR}
	rm ${INSTDIR}/lib/*${PATCHORIG}
	mv ${INSTDIR}/VERSION{,.xsl}
	${INSTALL_DATA} ${WRKSRC}/catalog.xml ${INSTDIR}/catalog.xml
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/docbook-xsl.spec ${PREFIX}/share/libxml2

post-install:
	@perl -pi -e 's#rewritePrefix=\".*?\"#rewritePrefix="${CATALOG_DIR}/"#g' ${INSTDIR}/catalog.xml
	
.include <bsd.port.mk>
