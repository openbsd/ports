# $OpenBSD: Makefile,v 1.11 2019/05/21 10:08:03 sthen Exp $

V =		0.2.6
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}
REVISION =	1

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girara-gtk3 glib-2.0 gobject-2.0 gtk-3 intl pango-1.0
WANTLIB += pangocairo-1.0 spectre

.include <bsd.port.mk>
