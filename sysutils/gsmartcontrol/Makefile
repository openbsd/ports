# $OpenBSD: Makefile,v 1.11 2015/05/09 15:24:44 ajacoutot Exp $

COMMENT=	graphical hard drive inspection tool (smartctl front-end)

DISTNAME=	gsmartcontrol-0.8.7
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	sysutils x11

HOMEPAGE=	http://gsmartcontrol.sourceforge.net/

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-x11-2.0
WANTLIB += gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pthread sigc-2.0 stdc++ util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gsmartcontrol/}

MODULES=	devel/gettext
RUN_DEPENDS=	devel/desktop-file-utils \
		sysutils/smartmontools \
		x11/gtk+3,-guic
LIB_DEPENDS=	x11/gtk2mm

CONFIGURE_STYLE=gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gsc_settings.h

.include <bsd.port.mk>
