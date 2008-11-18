# $OpenBSD: Makefile,v 1.8 2008/11/18 11:59:31 jasper Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.11
GNOME_PROJECT=	gtk-doc
CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# XXX: To be fixed
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-doc/${GNOME_VERSION}/}

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xml-catalog=${WRKDIR}/catalog.xml

PKG_ARCH=		*

BUILD_DEPENDS=		::x11/gnome/doc-utils \
			${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/openjade \
			::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt \
			::textproc/scrollkeeper	\
			::x11/gnome/yelp

NO_REGRESS=		Yes

post-extract:
	cp ${LOCALBASE}/share/xml/docbook/catalog.xml \
		${WRKDIR}/catalog.xml

	xmlcatalog --add nextCatalog \
		--id ${LOCALBASE}/share/xsl/docbook/catalog.xml \
		--noout ${WRKDIR}/catalog.xml ${WRKDIR}/catalog.xml

	ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
