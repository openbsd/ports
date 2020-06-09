# $OpenBSD: Makefile,v 1.16 2020/06/09 07:14:45 jasper Exp $

COMMENT=	docbook XSL modular stylesheet

DISTNAME=	docbook-xsl-1.68.1
REVISION =	7
CATEGORIES=	textproc

HOMEPAGE=	http://docbook.sourceforge.net/projects/xsl/

# MIT/X Consortium License
PERMIT_PACKAGE=	Yes

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
	cd ${WRKSRC} && ${MAKE_ENV} ./INSTALL

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR} ${DOCSDIR}
	cd ${WRKSRC}/doc && ${TAR} -cf - . | ${TAR} -xf - -C${DOCSDIR}
	cd ${WRKSRC} && \
		${TAR} -cf - VERSION ${COPYDIRS} | ${TAR} -xf - -C${INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/catalog.xml ${INSTDIR}/catalog.xml
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/docbook-xsl.spec ${PREFIX}/share/libxml2

post-install:
	@perl -pi -e 's#rewritePrefix=\".*?\"#rewritePrefix="${CATALOG_DIR}/"#g' ${INSTDIR}/catalog.xml
	
.include <bsd.port.mk>
