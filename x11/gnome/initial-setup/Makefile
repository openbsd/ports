# $OpenBSD: Makefile,v 1.7 2014/04/21 14:57:02 ajacoutot Exp $

BROKEN=			temporary for the kerberos removal

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.12.0
REVISION=		1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes


MODULES=		x11/gnome \
			devel/dconf \
			devel/gettext

LIB_DEPENDS=		inputmethods/ibus \
			security/libpwquality \
			x11/gnome/desktop \
			x11/gnome/gdm \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

# gnome-welcome-tour
RUN_DEPENDS +=		x11/gnome/getting-started-docs \
			x11/gnome/yelp

# share/polkit-1/rules.d/20-gnome-initial-setup.rules
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-initial-setup

pre-configure:
# disable user account panel (requires kerberos)
	ln -sf /usr/bin/true ${WRKDIR}/bin/krb5-config

.include <bsd.port.mk>
