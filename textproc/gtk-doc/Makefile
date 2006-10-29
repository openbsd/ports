# $OpenBSD: Makefile,v 1.4 2006/10/29 18:18:47 alek Exp $

COMMENT=	"GTK C code documentation system"

VERSION=	1.7
DISTNAME=	gtk-doc-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.gnome.org/pub/GNOME/sources/gtk-doc/${VERSION}/

PKG_ARCH=	*
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-xml-catalog=${WRKDIR}/catalog.xml

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/openjade 	\
		::textproc/docbook 	\
		::textproc/docbook-xsl 	\
		::textproc/libxslt	\
		::textproc/scrollkeeper

post-extract:
	cp ${LOCALBASE}/share/xml/docbook/catalog.xml \
		${WRKDIR}/catalog.xml

	xmlcatalog --add nextCatalog \
		--id ${LOCALBASE}/share/xsl/docbook/catalog.xml \
		--noout ${WRKDIR}/catalog.xml ${WRKDIR}/catalog.xml

.include <bsd.port.mk>
