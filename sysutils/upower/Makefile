# $OpenBSD: Makefile,v 1.7 2011/06/17 15:08:36 landry Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

DISTNAME =	upower-0.9.11
CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib               0.0 # 1.1

REVISION =		1

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
BUILD_DEPENDS =	textproc/libxslt,-main \
		textproc/docbook-xsl

WANTLIB =	c dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 m \
		polkit-gobject-1 pthread gthread-2.0 gio-2.0 \
		gmodule-2.0 pcre z

.include <bsd.port.mk>
