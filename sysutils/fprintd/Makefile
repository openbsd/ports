# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:42 sthen Exp $

COMMENT=		fingerprint scanning functionality over D-Bus

DISTNAME=		fprintd-0.8.1
EXTRACT_SUFX=		.tar.xz

CATEGORIES=    		sysutils

HOMEPAGE=		https://fprint.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c dbus-1 dbus-glib-1 ffi fprint gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl m pcre polkit-gobject-1 pthread

MASTER_SITES=		https://gitlab.freedesktop.org/libfprint/fprintd/uploads/bdd9f91909f535368b7c21f72311704a/

MODULES=		textproc/intltool

USE_GMAKE=		Yes

LIB_DEPENDS=		security/libfprint \
			sysutils/polkit \
			x11/dbus-glib

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-pam

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/fprintd

.include <bsd.port.mk>
