COMMENT=		fingerprint scanning functionality over D-Bus

DISTNAME=		fprintd-0.8.1
EXTRACT_SUFX=		.tar.xz
REVISION=		3

CATEGORIES=    		sysutils

HOMEPAGE=		https://fprint.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c dbus-1 dbus-glib-1 execinfo ffi fprint gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl m pcre2-8 polkit-gobject-1
WANTLIB += pthread

SITES=			https://gitlab.freedesktop.org/libfprint/fprintd/uploads/bdd9f91909f535368b7c21f72311704a/

MODULES=		textproc/intltool

USE_GMAKE=		Yes

LIB_DEPENDS=		security/libfprint \
			sysutils/polkit \
			x11/dbus-glib

RUN_DEPENDS=		x11/dbus,-suid

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-pam

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/fprintd

.include <bsd.port.mk>
