# $OpenBSD: Makefile,v 1.1.1.1 2013/07/01 05:08:06 ajacoutot Exp $

COMMENT=	caching mechanism for freedesktop.org compliant menus

DISTNAME=	menu-cache-0.4.1

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
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
