# $OpenBSD: Makefile,v 1.22 2007/10/22 14:08:22 steven Exp $

COMMENT=	Gtk bindings for Python

# Version numbers between py-gtk and py-gnome are different, but py-gnome
# overlaps py-gtk. Because of this version number inconsistency, we use
# py-gnome's version number, even for py-gtk.

V=		1.4.2		## For py-gtk, this really is 0.6.9
PKGNAME=	py-Gtk-${V}p3
DISTNAME=	gnome-python-${V}
CATEGORIES=	x11 devel

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-python/1.4/}

HOMEPAGE=	http://www.daa.com.au/~james/gnome/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		GL GLU X11 Xext Xi gdk glib gmodule gtk \
			jpeg m png pthread tiff ungif xml z ICE SM

MODULES=	devel/gettext lang/python
LIB_DEPENDS+=	gdk_imlib::graphics/imlib \
		gtkgl.>=1.2::x11/gtkglarea \
		gdk_pixbuf::graphics/gdk-pixbuf \
		gthread.>=1.2::devel/glib

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

PATCH_STRIP=  -p1
PATCH_LIST=   patch-pygtk_configure

LIB_DEPENDS+= glade.>=4::devel/libglade
WRKDIST=      ${WRKDIR}/${DISTNAME}/pygtk

.include <bsd.port.mk>
