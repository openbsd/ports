# $OpenBSD: Makefile,v 1.10 2011/07/08 08:16:09 dcoppa Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

DISTNAME =	upower-0.9.12
REVISION =	0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib               0.0 # 1.1

HOMEPAGE =	http://upower.freedesktop.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

#GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-man-pages \
			--with-backend=openbsd \
			--without-idevice

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/upower

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	sysutils/polkit>=0.101 \
		x11/dbus-glib
BUILD_DEPENDS =	devel/gobject-introspection \
		textproc/libxslt,-main \
		textproc/docbook-xsl

WANTLIB =	c dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 m \
		polkit-gobject-1 pthread gthread-2.0 gio-2.0 \
		gmodule-2.0 pcre z

.include <bsd.port.mk>
