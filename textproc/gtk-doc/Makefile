# $OpenBSD: Makefile,v 1.61 2020/07/03 21:13:13 sthen Exp $

COMMENT=		GTK C code documentation system

GNOME_VERSION=		1.32
GNOME_PROJECT=		gtk-doc
REVISION=		0

CATEGORIES=		textproc devel

HOMEPAGE=		http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook yelp
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_DBLATEX= \
			ac_cv_path_FOP=

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

# glib2 needed to build regression tests
BUILD_DEPENDS=		devel/glib2 \
			textproc/py-pygments${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-anytree${MODPY_FLAVOR} \
			textproc/docbook-xsl \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

.include <bsd.port.mk>
