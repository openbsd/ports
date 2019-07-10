# $OpenBSD: Makefile,v 1.22 2019/07/10 21:01:27 tj Exp $

COMMENT=	GTK+ support library for colord

DISTNAME=	colord-gtk-0.2.0
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS += colord-gtk                0.0 # 1.0.3

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo colord colordprivate gdk-3 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl

MASTER_SITES=	https://www.freedesktop.org/software/colord/releases/

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala

LIB_DEPENDS=	graphics/colord \
		x11/gtk+3

USE_GMAKE=	Yes

CONFIGURE_ARGS=	-Ddocs=false \
		-Dvapi=true

# XXX require docbook-xsl-nsl
CONFIGURE_ARGS +=	-Dman=false

.include <bsd.port.mk>
