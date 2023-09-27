COMMENT=		fine-grained privileges PolicyKit helper for CUPS

DISTNAME=		cups-pk-helper-0.2.7
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		print sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/cups-pk-helper

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cups gio-2.0 glib-2.0 gobject-2.0 polkit-gobject-1

SITES=		http://www.freedesktop.org/software/cups-pk-helper/releases/

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		sysutils/polkit \
			print/cups,-libs

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

.include <bsd.port.mk>
