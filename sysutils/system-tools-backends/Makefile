# $OpenBSD: Makefile,v 1.1.1.1 2010/09/10 13:49:59 ajacoutot Exp $

COMMENT=	cross-platform configuration modules

GNOME_VERSION=	2.10.1
GNOME_PROJECT=	system-tools-backends

CATEGORIES=	sysutils

HOMEPAGE=	http://system-tools-backends.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pthread z dbus-1 dbus-glib-1 eggdbus-1 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 pcre polkit-gobject-1

LIB_DEPENDS=	::sysutils/polkit
RUN_DEPENDS=	::net/p5-Net-DBus
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	devel/gettext \
		x11/gnome

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-stb-group=wheel

FAKE_FLAGS=	systemddir=${PREFIX}/share/examples/system-tools-backends/dbus-1/system.d \
		itlocaledir=${PREFIX}/share/locale

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Shares/SMB.pm

.include <bsd.port.mk>
