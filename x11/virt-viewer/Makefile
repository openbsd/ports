# $OpenBSD: Makefile,v 1.56 2021/11/25 20:15:50 ajacoutot Exp $

BROKEN-hppa=	build stuck on virt-viewer-window.c

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-11.0

CATEGORIES=	x11

HOMEPAGE=	http://virt-manager.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 gtk-vnc-2.0 gvnc-1.0 intl m pango-1.0 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 virt virt-glib-1.0 vte-2.91 xml2

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/
EXTRACT_SUFX=	.tar.xz

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		shells/bash-completion

LIB_DEPENDS=	devel/libvirt-glib \
		devel/vte3 \
		x11/gtk-vnc \
		x11/spice-gtk

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		misc/shared-mime-info

CONFIGURE_ARGS=	-Dovirt=disabled

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
