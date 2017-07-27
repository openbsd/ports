# $OpenBSD: Makefile,v 1.16 2017/07/27 10:05:20 sthen Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT=		graphical hard drive inspection tool (smartctl front-end)

DISTNAME=		gsmartcontrol-1.0.2
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

CATEGORIES=		sysutils x11

HOMEPAGE=		http://gsmartcontrol.sourceforge.net/

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangomm-1.4 pcre pthread sigc-2.0 util
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gsmartcontrol/}

# c++11
COMPILER =		gcc

RUN_DEPENDS=		devel/desktop-file-utils \
			sysutils/smartmontools \
			x11/gtk+3,-guic

LIB_DEPENDS=		x11/gtk3mm

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gsc_settings.h

.include <bsd.port.mk>
