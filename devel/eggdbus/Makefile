# $OpenBSD: Makefile,v 1.4 2010/10/18 17:47:52 espie Exp $

COMMENT=	D-Bus binding for GObject

DISTNAME=	eggdbus-0.6
REVISION=	1

SHARED_LIBS +=  eggdbus-1 0.0                     # .0.0

CATEGORIES=	devel x11

HOMEPAGE=	http://dbus.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c dbus-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre
WANTLIB += dbus-glib-1.>=4 pthread gthread-2.0 z 

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=	devel/gettext

BUILD_DEPENDS=	::textproc/libxslt \
		::textproc/docbook-xsl
LIB_DEPENDS=	::x11/dbus-glib

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-man-pages \
		--enable-gtk-doc=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
