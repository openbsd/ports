# only files under tests/ are compiled but not installed
PKG_ARCH=		*

COMMENT=		GTK C code documentation system

GNOME_VERSION=		1.34.0
GNOME_PROJECT=		gtk-doc
REVISION=		4

CATEGORIES=		textproc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook yelp

# glib2 needed to build regression tests
BUILD_DEPENDS=		devel/glib2 \
			textproc/py-pygments

RUN_DEPENDS=		devel/py-anytree \
			textproc/docbook-xsl \
			textproc/py-lxml \
			textproc/py-pygments

.include <bsd.port.mk>
