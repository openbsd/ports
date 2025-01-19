COMMENT=	integration of xdg-user-dirs into GNOME/gtk+

GNOME_PROJECT=	xdg-user-dirs-gtk
GNOME_VERSION=	0.14

CATEGORIES=	x11 devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 gobject-2.0 gtk-3 intl

MODULES=	devel/meson \
		x11/gnome

BUILD_DEPENDS=	devel/xdg-user-dirs

LIB_DEPENDS=	x11/gtk+3

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-user-dirs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdg-user-dirs-gtk
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/xdg-user-dirs-gtk/

.include <bsd.port.mk>
