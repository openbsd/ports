# $OpenBSD: Makefile,v 1.8 2017/01/26 01:41:55 ajacoutot Exp $

COMMENT=		caching mechanism for freedesktop.org compliant menus

DISTNAME=		menu-cache-1.0.2
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  menu-cache           1.0      # 4.1

CATEGORIES=		x11

HOMEPAGE=		http://www.lxde.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi fm-extra gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl m pcre pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lxde/}

LIB_DEPENDS=		x11/libfm/extra

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
