# only files under tests/ are compiled but not installed
PKG_ARCH=		*

COMMENT=		GTK C code documentation system

GNOME_VERSION=		1.33.2
GNOME_PROJECT=		gtk-doc
REVISION=		1

CATEGORIES=		textproc devel

HOMEPAGE=		http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook yelp

# glib2 needed to build regression tests
BUILD_DEPENDS=		devel/glib2 \
			textproc/py-pygments${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-anytree${MODPY_FLAVOR} \
			textproc/docbook-xsl \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

.include <bsd.port.mk>
