# $OpenBSD: Makefile,v 1.57 2019/04/28 20:51:55 sthen Exp $

COMMENT=		GTK C code documentation system

GNOME_VERSION=		1.29
GNOME_PROJECT=		gtk-doc
REVISION=		1

CATEGORIES=		textproc devel

HOMEPAGE=		http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook yelp
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-highlight=source-highlight
CONFIGURE_ENV=		ac_cv_path_DBLATEX= \
			ac_cv_path_FOP=

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

# glib2 needed to build regression tests
BUILD_DEPENDS=		devel/glib2 \
			textproc/source-highlight

RUN_DEPENDS=		devel/py-anytree${MODPY_FLAVOR} \
			textproc/docbook-xsl \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/source-highlight

.include <bsd.port.mk>
