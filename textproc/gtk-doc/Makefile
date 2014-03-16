# $OpenBSD: Makefile,v 1.40 2014/03/16 09:12:24 ajacoutot Exp $

COMMENT=	GTK C code documentation system

GNOME_VERSION=	1.20
GNOME_PROJECT=	gtk-doc
REVISION=	0

CATEGORIES=    	textproc devel

HOMEPAGE=	http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome \
			lang/python

MODPY_RUNDEP=		No
MODGNOME_TOOLS= 	yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-highlight=source-highlight
CONFIGURE_ENV=		ac_cv_path_DBLATEX= \
			ac_cv_path_FOP=

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

BUILD_DEPENDS=		textproc/docbook-xsl \
			textproc/openjade \
			textproc/source-highlight

RUN_DEPENDS=		textproc/docbook-xsl \
			textproc/openjade \
			textproc/source-highlight

.include <bsd.port.mk>
