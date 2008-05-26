# $OpenBSD: Makefile,v 1.4 2008/05/26 08:32:57 ajacoutot Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.7.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	telepathy-glib       1.0      # .4.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-glib/}

WANTLIB=		dbus-1 glib-2.0 gobject-2.0 pcre

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODPY_EXPAT_DEPENDS} \
			::textproc/libxslt \
			:devhelp-*:x11/gnome/devhelp
LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.61

.include <bsd.port.mk>
