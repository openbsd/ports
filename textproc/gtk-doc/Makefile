# $OpenBSD: Makefile,v 1.6 2008/05/26 16:29:27 ajacoutot Exp $

COMMENT=	GTK C code documentation system

VERSION=	1.7
DISTNAME=	gtk-doc-${VERSION}
PKGNAME=	${DISTNAME}p1
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
		::textproc/scrollkeeper	\
		:yelp-*:x11/gnome/yelp

post-extract:
	cp ${LOCALBASE}/share/xml/docbook/catalog.xml \
		${WRKDIR}/catalog.xml

	xmlcatalog --add nextCatalog \
		--id ${LOCALBASE}/share/xsl/docbook/catalog.xml \
		--noout ${WRKDIR}/catalog.xml ${WRKDIR}/catalog.xml

.include <bsd.port.mk>
