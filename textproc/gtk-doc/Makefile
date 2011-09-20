# $OpenBSD: Makefile,v 1.30 2011/09/20 21:04:25 jasper Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.18
GNOME_PROJECT=	gtk-doc
REVISION=	0

CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome \
			lang/python

MODPY_RUNDEP=		No
MODGNOME_TOOLS= 	yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xml-catalog=${WRKDIR}/catalog.xml

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/openjade \
			textproc/docbook \
			textproc/docbook-xsl \
			textproc/libxslt \
			editors/vim,no_x11

REGRESS_DEPENDS=	shells/bash

FAKE_FLAGS=		pkgconfigdir=${PREFIX}/lib/pkgconfig/

post-extract:
	cp ${LOCALBASE}/share/xml/docbook/catalog.xml \
		${WRKDIR}/catalog.xml
	xmlcatalog --add nextCatalog \
		--id ${LOCALBASE}/share/xsl/docbook/catalog.xml \
		--noout ${WRKDIR}/catalog.xml ${WRKDIR}/catalog.xml

pre-configure:
	perl -pi -e "s,/bin/bash,${LOCALBASE}/bin/bash," \
		${WRKSRC}/tests/fail.sh \
		${WRKSRC}/tests/tools.sh.in

.include <bsd.port.mk>
