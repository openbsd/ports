# $OpenBSD: Makefile,v 1.3 2006/07/22 18:18:36 steven Exp $

COMMENT=	"docbook XSL modular stylesheet"

DISTNAME=	docbook-xsl-1.68.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	textproc

HOMEPAGE=	http://docbook.sourceforge.net/projects/xsl/

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docbook/}

BUILD_DEPENDS=	:libxml->=2.6.16p6:textproc/libxml
RUN_DEPENDS=	:libxml->=2.6.16p6:textproc/libxml

NO_REGRESS=	Yes
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
	@perl -pi -e "s#${WRKSRC}#${CATALOG_DIR}#g" ${INSTDIR}/catalog.xml
	
.include <bsd.port.mk>
