# $OpenBSD: Makefile,v 1.1.1.1 2010/09/22 05:16:56 ajacoutot Exp $

COMMENT=	command line utility to run programs as root

DISTNAME=	gksu-polkit-0.0.2

SHARED_LIBS +=  gksu-polkit               0.0 # 0.1

CATEGORIES=	security sysutils x11

HOMEPAGE=	http://live.gnome.org/gksu

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext png
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender c expat fontconfig glitz
WANTLIB += freetype m pixman-1 pthread pthread-stubs xcb xcb-atom gee
WANTLIB += xcb-aux xcb-event xcb-render xcb-render-util z cairo pcre
WANTLIB += dbus-1 dbus-glib-1 eggdbus-1 execinfo gdk-x11-2.0 atk-1.0 
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += polkit-gobject-1 startup-notification-1

MASTER_SITES=	http://people.debian.org/~kov/gksu/

LIB_DEPENDS=	::sysutils/polkit \
		::x11/gtk+2 \
		::devel/libgee \
		::devel/startup-notification

BUILD_DEPENDS=	::lang/vala
RUN_DEPENDS=	:polkit-gnome-*|polkit-qt4-*:x11/polkit-gnome

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc

FAKE_FLAGS=	DBUS_SYS_DIR=${PREFIX}/share/examples/gksu-polkit/dbus-1/system.d

post-extract:
	cp ${FILESDIR}/gksu-environment.vala ${WRKSRC}/common

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mechanism/gksu-controller.c

.include <bsd.port.mk>
