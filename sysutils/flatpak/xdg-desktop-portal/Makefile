PORTROACH ?=		limitw:1,even

COMMENT=		portal frontend service for desktop containment frameworks

V=			1.18.4
DISTNAME=		xdg-desktop-portal-${V}

CATEGORIES=		x11

HOMEPAGE=		https://flatpak.github.io/xdg-desktop-portal/

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += json-glib-1.0 pipewire-0.3

SITES=			https://github.com/flatpak/xdg-desktop-portal/releases/download/${V}/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			geo/geoclue2

# rst2man
BUILD_DEPENDS +=	textproc/py-docutils${MODPY_FLAVOR}

# needed for tests
BUILD_DEPENDS +=	sysutils/flatpak/libportal

LIB_DEPENDS=		devel/json-glib \
			graphics/gdk-pixbuf2 \
			multimedia/pipewire/pipewire,-libs

RUN_DEPENDS=		geo/geoclue2 \
			multimedia/pipewire/pipewire

CONFIGURE_ARGS=		-Dflatpak-interfaces=disabled \
			-Dsystemd=disabled \
			-Dsandboxed-image-validation=false

# needs dbusmock
CONFIGURE_ARGS +=	-Dpytest=disabled

# XXX needs org.freedesktop.portal.Flatpak.xml
#BUILD_DEPENDS +=	textproc/xmlto
CONFIGURE_ARGS +=	-Ddocbook-docs=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX No fuse3 on OpenBSD.
post-install:
	rm ${PREFIX}/lib/systemd/user/xdg-document-portal.service \
		${PREFIX}/share/dbus-1/interfaces/org.freedesktop.portal.Documents.xml \
		${PREFIX}/share/dbus-1/services/org.freedesktop.portal.Documents.service

.include <bsd.port.mk>
