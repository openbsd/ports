# $OpenBSD: Makefile,v 1.7 2016/08/28 15:32:52 jca Exp $

COMMENT=	caching mechanism for freedesktop.org compliant menus

DISTNAME=	menu-cache-1.0.1
REVISION=	0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	x11

HOMEPAGE=	http://www.lxde.org/

SHARED_LIBS +=  menu-cache           1.0      # 4.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi fm-extra gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl m pcre pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

LIB_DEPENDS=	devel/gettext \
		x11/libfm/extra

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
