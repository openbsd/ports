# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:20 ajacoutot Exp $

COMMENT=	caching mechanism for freedesktop.org compliant menus

DISTNAME=	menu-cache-0.4.1
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://www.lxde.org/

SHARED_LIBS +=  menu-cache           0.0      # 2.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

WANTLIB=	c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread z

LIB_DEPENDS=	devel/glib2

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
