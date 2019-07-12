# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:17 sthen Exp $

COMMENT=		caching mechanism for freedesktop.org compliant menus

DISTNAME=		menu-cache-1.1.0
EXTRACT_SUFX=		.tar.xz
REVISION=		0

SHARED_LIBS +=  menu-cache           1.0      # 4.1

CATEGORIES=		x11

HOMEPAGE=		http://www.lxde.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi fm-extra gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl m pcre pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lxde/}

LIB_DEPENDS=		x11/libfm/extra

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
