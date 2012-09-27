# $OpenBSD: Makefile,v 1.33 2012/09/27 17:59:37 ajacoutot Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.18
GNOME_PROJECT=	gtk-doc
REVISION=	3

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

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/openjade \
			textproc/docbook-xsl \
			editors/vim,no_x11

REGRESS_DEPENDS=	shells/bash

pre-configure:
	perl -pi -e "s,/bin/bash,${LOCALBASE}/bin/bash," \
		${WRKSRC}/tests/fail.sh \
		${WRKSRC}/tests/tools.sh.in

.include <bsd.port.mk>
