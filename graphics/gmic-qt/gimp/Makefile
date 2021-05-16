# $OpenBSD: Makefile,v 1.1.1.1 2021/05/16 09:42:24 espie Exp $

QT_HOST =	gimp

WANTLIB += gimp-2.0 gimpbase-2.0 gimpcolor-2.0 gimpconfig-2.0 gimpmath-2.0
WANTLIB += gegl-0.4  babl-0.1 cairo json-glib-1.0 intl
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0

LIB_DEPENDS += 	graphics/gimp/stable

.include <bsd.port.mk>
