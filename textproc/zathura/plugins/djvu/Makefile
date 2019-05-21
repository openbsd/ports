# $OpenBSD: Makefile,v 1.10 2019/05/21 10:08:03 sthen Exp $

V =		0.2.8
REVISION =	1
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += atk-1.0 cairo cairo-gobject djvulibre gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girara-gtk3 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += pango-1.0 pangocairo-1.0

.include <bsd.port.mk>
