# $OpenBSD: Makefile,v 1.6 2011/11/25 15:08:25 ajacoutot Exp $

COMMENT-main=	GNOME desktop meta-package (base installation)
COMMENT-extras=	GNOME desktop meta-package (full installation)

V=		3.2.1
PKGNAME=	gnome-${V}

PKGNAME-main=	gnome-${V}
PKGNAME-extras=	gnome-extras-${V}

REVISION-main=	4
REVISION-extras=0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

MULTI_PACKAGES=	-main -extras

# sync with gnome-desktop version
RUN_DEPENDS-main += x11/gnome/desktop=${V}

# minimal dependencies for a working desktop
RUN_DEPENDS-main += \
		x11/gnome/controlcenter \
		x11/gnome/eog \
		x11/gnome/file-roller \
		x11/gnome/gedit \
		x11/gnome/keyring \
		x11/gnome/media \
		x11/gnome/nautilus \
		x11/gnome/session \
		x11/gnome/system-monitor \
		x11/gnome/terminal \
		x11/gnome/utils

# gconf2 and polkit are already dependencies and we want to be able to
# handle system-wide gconf entries.
RUN_DEPENDS-main += devel/gconf2,-polkit

# Install accessibility components -- daemons will start only if
# accessibility is enabled by the user.
RUN_DEPENDS-main += x11/gnome/at-spi2-atk

# GNOME spooler is CUPS (gnome-printers-panel in gnome-control-center),
# add gtk+{2,3}-cups so that gtkprint() can see native CUPS printers.
RUN_DEPENDS-main += x11/gtk+2,-cups x11/gtk+3,-cups

# Add some commonly used utilities.
RUN_DEPENDS-main += \
		graphics/evince,-nautilus \
		x11/gnome/file-roller,-nautilus \
		x11/gnome/gcalctool \
		x11/xdg-user-dirs-gtk

RUN_DEPENDS-extras += \
		STEM-=${V}:${BASE_PKGPATH},-main \
		audio/rhythmbox \
		graphics/simple-scan \
		mail/evolution,-plugins \
		mail/evolution-rss \
		www/epiphany-extensions \
		sysutils/deja-dup \
		x11/gnome/contacts \
		x11/gnome/empathy \
		x11/gnome/eog-plugins \
		x11/gnome/gedit-plugins \
		x11/gnome/gnote \
		x11/gnome/icon-theme-extras \
		x11/gnome/nautilus-open-terminal \
		x11/gnome/nautilus-sendto \
		x11/gnome/nettool \
		x11/gnome/seahorse-plugins \
		x11/gnome/seahorse-sharing \
		x11/gnome/totem,-nautilus \
		x11/gnome/tracker,-nautilus \
		x11/gnome/tweak-tool \
		x11/gnome/vinagre \
		x11/gnome/vino
# BROKEN
# x11/gnome/ekiga
# x11/gnome/games-extra-data
# x11/gnome/tracker,-evolution

.include <bsd.port.mk>
