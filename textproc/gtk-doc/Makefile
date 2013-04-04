# $OpenBSD: Makefile,v 1.35 2013/04/04 15:42:00 ajacoutot Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.18
GNOME_PROJECT=	gtk-doc
REVISION=	4

CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome \
			lang/python

MODPY_RUNDEP=		No
#MODGNOME_TOOLS= 	yelp

CONFIGURE_STYLE=	gnu

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/openjade \
			textproc/docbook-xsl \
			editors/vim,no_x11

TEST_DEPENDS=	shells/bash

pre-configure:
	perl -pi -e "s,/bin/bash,${LOCALBASE}/bin/bash," \
		${WRKSRC}/tests/fail.sh \
		${WRKSRC}/tests/tools.sh.in

.include <bsd.port.mk>
