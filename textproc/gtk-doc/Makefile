# $OpenBSD: Makefile,v 1.14 2009/08/07 22:12:44 sthen Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.11
GNOME_PROJECT=	gtk-doc
PKGNAME=	${DISTNAME}p2

CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome \
			lang/python
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xml-catalog=${WRKDIR}/catalog.xml

PKG_ARCH=		*

BUILD_DEPENDS=		::x11/gnome/doc-utils \
			::textproc/rarian \
			${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/openjade \
			::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt \
			::x11/gnome/yelp

NO_REGRESS=		Yes

post-extract:
	cp ${LOCALBASE}/share/xml/docbook/catalog.xml \
		${WRKDIR}/catalog.xml
	xmlcatalog --add nextCatalog \
		--id ${LOCALBASE}/share/xsl/docbook/catalog.xml \
		--noout ${WRKDIR}/catalog.xml ${WRKDIR}/catalog.xml

.include <bsd.port.mk>
