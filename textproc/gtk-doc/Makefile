# $OpenBSD: Makefile,v 1.53 2017/12/09 07:08:27 ajacoutot Exp $

COMMENT=		GTK C code documentation system

GNOME_VERSION=		1.27
GNOME_PROJECT=		gtk-doc

CATEGORIES= 	   	textproc devel

HOMEPAGE=		http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-highlight=source-highlight
CONFIGURE_ENV=		ac_cv_path_DBLATEX= \
			ac_cv_path_FOP=

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

# glib2 needed to build regression tests
BUILD_DEPENDS=		devel/glib2 \
			textproc/source-highlight

RUN_DEPENDS=		devel/py-six \
			textproc/docbook-xsl \
			textproc/source-highlight

.include <bsd.port.mk>
