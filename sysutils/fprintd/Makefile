# $OpenBSD: Makefile,v 1.1.1.1 2018/04/26 16:06:20 ajacoutot Exp $

COMMENT=		fingerprint scanning functionality over D-Bus

DISTNAME=		fprintd-0.8.0
EXTRACT_SUFX=		.tar.xz

CATEGORIES=    		sysutils

HOMEPAGE=		https://www.freedesktop.org/wiki/Software/fprint/fprintd/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 dbus-glib-1 ffi fprint gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl m nspr4 nss3 nssutil3 pcre pixman-1
WANTLIB += plc4 plds4 polkit-gobject-1 pthread smime3 ssl3 usb-1.0
WANTLIB += z

MASTER_SITES=		http://people.freedesktop.org/~hadess/

MODULES=		textproc/intltool

USE_GMAKE=		Yes

LIB_DEPENDS=		security/libfprint \
			sysutils/polkit \
			x11/dbus-glib

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-pam

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/fprintd

.include <bsd.port.mk>
