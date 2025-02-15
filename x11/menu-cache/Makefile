COMMENT=		caching mechanism for freedesktop.org compliant menus

DIST_TUPLE=		github lxde menu-cache 1.1.1 .

SHARED_LIBS +=  menu-cache           1.1      # 5.1

CATEGORIES=		x11

HOMEPAGE=		http://www.lxde.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi fm-extra gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl m pcre2-8 pthread z

BUILD_DEPENDS=		textproc/gtk-doc

LIB_DEPENDS=		x11/libfm-extra

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.17

CONFIGURE_STYLE=	autoreconf

.include <bsd.port.mk>
