# $OpenBSD: Makefile,v 1.2 2006/07/29 12:58:53 aanriot Exp $

COMMENT=	"GTK C code documentation system"

VERSION=	1.6
DISTNAME=	gtk-doc-${VERSION}
CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

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
		::textproc/libxslt

post-extract:
	cp ${LOCALBASE}/share/xml/docbook/catalog.xml \
		${WRKDIR}/catalog.xml

	xmlcatalog --add nextCatalog \
		--id ${LOCALBASE}/share/xsl/docbook/catalog.xml \
		--noout ${WRKDIR}/catalog.xml ${WRKDIR}/catalog.xml

.include <bsd.port.mk>
