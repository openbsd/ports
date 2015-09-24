# $OpenBSD: Makefile,v 1.12 2015/09/24 10:36:39 ajacoutot Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT=	graphical hard drive inspection tool (smartctl front-end)

DISTNAME=	gsmartcontrol-0.8.7
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	sysutils x11

HOMEPAGE=	http://gsmartcontrol.sourceforge.net/

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-x11-2.0
WANTLIB += gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pthread sigc-2.0 util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gsmartcontrol/}

MODULES=	devel/gettext

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

RUN_DEPENDS=	devel/desktop-file-utils \
		sysutils/smartmontools \
		x11/gtk+3,-guic
LIB_DEPENDS=	x11/gtk2mm

CONFIGURE_STYLE=gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gsc_settings.h

.include <bsd.port.mk>
