ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

V =	v1.90.4
DISTNAME =	upower-${V}
PKGNAME =	upower-${V:S/v//}

CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib          3.0

HOMEPAGE =	https://upower.freedesktop.org/
SITES =		https://gitlab.freedesktop.org/upower/upower/-/archive/${V}/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses unveil()
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 m

MODULES =	devel/meson
CONFIGURE_ARGS =-Dintrospection=enabled \
		-Dhistorydir=/var/db/upower \
		-Dos_backend=openbsd \
		-Dudevrulesdir=disabled \
		-Dudevhwdbdir=disabled \
		-Dsystemdsystemunitdir=no \
		-Didevice=disabled

# gtk-doc is disabled because otherwise xsltproc fetches from net
CONFIGURE_ARGS +=-Dgtk-doc=false

LIB_DEPENDS =	devel/glib2
BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		textproc/docbook-xsl \
		textproc/gtk-doc

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

post-install:
	# stupid udev rules
	rm -Rf ${PREFIX}/disabled
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/upower/
	mv ${WRKINST}${SYSCONFDIR}/UPower ${PREFIX}/share/examples/upower/

.include <bsd.port.mk>
