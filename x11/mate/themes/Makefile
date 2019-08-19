# $OpenBSD: Makefile,v 1.13 2019/08/19 13:25:25 robert Exp $

COMMENT=		standard MATE themes

MATE_PROJECT=		mate-themes
MATE_VERSION=		3.22.20

MASTER_SITES=		http://pub.mate-desktop.org/releases/themes/${MATE_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		x11/gtk+2 \
			x11/gtk+3

MODGNOME_TOOLS=		gtk-update-icon-cache

# As explained here:
# https://mail.gnome.org/archives/desktop-devel-list/2011-March/msg00017.html
# we need to depend on gtk-engines2 in order for the gtk2 themes to work.
RUN_DEPENDS +=		x11/gtk-engines2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
