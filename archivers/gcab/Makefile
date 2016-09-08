# $OpenBSD: Makefile,v 1.2 2016/09/08 10:14:55 jasper Exp $

COMMENT=		cabinet file library and tool

GNOME_PROJECT=		gcab
GNOME_VERSION=		0.6
REVISION=		0

SHARED_LIBS +=	gcab-1.0                  0.0 # 0.0

CATEGORIES=		archivers devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		vala

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
