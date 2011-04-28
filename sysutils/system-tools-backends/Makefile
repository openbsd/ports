# $OpenBSD: Makefile,v 1.16 2011/04/28 13:10:57 ajacoutot Exp $

COMMENT=	cross-platform configuration modules

GNOME_VERSION=	2.10.2
GNOME_PROJECT=	system-tools-backends

REVISION=	1

CATEGORIES=	sysutils

HOMEPAGE=	http://system-tools-backends.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pcre polkit-gobject-1 pthread z

LIB_DEPENDS=	sysutils/polkit \
		x11/dbus-glib
RUN_DEPENDS=	net/p5-Net-DBus
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	devel/gettext \
		x11/gnome

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-stb-group=wheel

FAKE_FLAGS=	systemddir=${PREFIX}/share/examples/system-tools-backends/dbus-1/system.d

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Shares/SMB.pm

.include <bsd.port.mk>
