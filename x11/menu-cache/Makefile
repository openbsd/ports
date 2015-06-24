# $OpenBSD: Makefile,v 1.4 2015/06/24 06:53:24 ajacoutot Exp $

COMMENT=	caching mechanism for freedesktop.org compliant menus

DISTNAME=	menu-cache-1.0.0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	x11

HOMEPAGE=	http://www.lxde.org/

SHARED_LIBS +=  menu-cache           1.0      # 4.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi fm-extra gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

MODULES=	devel/gettext

LIB_DEPENDS=	x11/libfm/extra

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
