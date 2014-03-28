# $OpenBSD: Makefile,v 1.92 2014/03/28 16:20:20 ajacoutot Exp $

COMMENT-main=		GNOME desktop meta-package (base installation)
COMMENT-extra=		GNOME desktop meta-package (full installation)

V=			3.12.0
PKGNAME=		gnome-${V}

PKGNAME-main=		gnome-${V}
PKGNAME-extra=		gnome-extra-${V}

REVISION-main=		0
REVISION-extra=		0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

MULTI_PACKAGES=		-main -extra

# remove when we don't use gtk+2 apps in GNOME
# Gtk-Message: Failed to load module "canberra-gtk-module"
RUN_DEPENDS-main +=	audio/libcanberra,-gtk

# sync with gnome-desktop version
RUN_DEPENDS-main +=	x11/gnome/desktop=${V}

# minimal dependencies for a working desktop
RUN_DEPENDS-main +=	x11/gnome/controlcenter \
			x11/gnome/nautilus \
			x11/gnome/session \
			x11/gnome/terminal

# gnome-classic.session
RUN_DEPENDS-main +=	x11/gnome/shell-extensions

# colord and gtk+3 are already dependencies
RUN_DEPENDS-main +=	graphics/colord-gtk

# GNOME spooler is CUPS (gnome-printers-panel in gnome-control-center)
# add gtk+3-cups so that gtkprint() can see native CUPS printers;
# add gtk+3-cloudprint, gnome-online-accounts is already a dependency
RUN_DEPENDS-main +=	x11/gtk+3,-cups
RUN_DEPENDS-main +=	x11/gtk+3,-cloudprint

# add commonly used utilities
RUN_DEPENDS-main +=	graphics/evince,-nautilus \
			x11/gnome/calculator \
			x11/gnome/eog \
			x11/gnome/file-roller \
			x11/gnome/gedit \
			x11/xdg-user-dirs-gtk

# former gnome-utils
RUN_DEPENDS-main +=	x11/gnome/baobab \
			x11/gnome/dictionary \
			x11/gnome/font-viewer \
			x11/gnome/screenshot

# gnome-initial-setup, gnome-getting-started-docs
RUN_DEPENDS-main +=	x11/gnome/initial-setup

# gnome-control-center already depends on samba and gnome-online-accounts
RUN_DEPENDS-main +=	x11/gnome/gvfs,-goa, \
			x11/gnome/gvfs,-smb,

# "Make it fancy!"
RUN_DEPENDS-main +=	x11/gnome/alacarte \
			x11/gnome/bijiben \
			x11/gnome/contacts \
			x11/gnome/documents \
			x11/gnome/eog-plugins \
			x11/gnome/gedit-plugins \
			x11/gnome/grilo-plugins \
			x11/gnome/maps \
			x11/gnome/music \
			x11/gnome/nautilus-sendto \
			x11/gnome/photos \
			x11/gnome/seahorse \
			x11/gnome/seahorse-nautilus \
			x11/gnome/seahorse-sharing \
			x11/gnome/sushi \
			x11/gnome/system-monitor \
			x11/gnome/tweak-tool \
			x11/gnome/vino \
			x11/gnome/weather

RUN_DEPENDS-extra +=	STEM-=${V}:${BASE_PKGPATH},-main \
			audio/rhythmbox \
			graphics/simple-scan \
			mail/evolution \
			mail/evolution-rss \
			sysutils/deja-dup \
			www/epiphany \
			x11/gnome/ekiga \
			x11/gnome/empathy \
			x11/gnome/icon-theme-extras \
			x11/gnome/rygel \
			x11/gnome/totem \
			x11/gnome/user-share \
			x11/gnome/vinagre

.include <bsd.port.mk>
