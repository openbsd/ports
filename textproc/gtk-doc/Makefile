# $OpenBSD: Makefile,v 1.10 2008/12/17 18:43:13 jasper Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.11
GNOME_PROJECT=	gtk-doc
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
			::textproc/rarian	\
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
