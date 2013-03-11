# $OpenBSD: Makefile,v 1.23 2013/03/11 11:41:33 espie Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

DISTNAME =	upower-0.9.18
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib               0.0 # 1.1
REVISION =	0

HOMEPAGE =	http://upower.freedesktop.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

#GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-systemd \
			--enable-introspection \
			--enable-man-pages \
			--with-historydir=/var/db/upower \
			--with-backend=openbsd \
			--without-idevice

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/upower

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

MODULES =	textproc/intltool

LIB_DEPENDS =	sysutils/polkit>=0.101 \
		x11/dbus-glib
BUILD_DEPENDS =	devel/gobject-introspection \
		textproc/docbook-xsl

WANTLIB += c dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += m polkit-gobject-1 pthread

.include <bsd.port.mk>
