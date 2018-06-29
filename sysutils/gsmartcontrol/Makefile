# $OpenBSD: Makefile,v 1.21 2018/06/29 22:16:20 espie Exp $

COMMENT=		graphical hard drive inspection tool (smartctl front-end)

DISTNAME=		gsmartcontrol-1.1.3
EXTRACT_SUFX=		.tar.bz2
REVISION=		2

CATEGORIES=		sysutils x11

HOMEPAGE=		https://gsmartcontrol.sourceforge.io/home/

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangomm-1.4 pcre pcrecpp pthread sigc-2.0
WANTLIB += util ${COMPILER_LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gsmartcontrol/}

# c++11
COMPILER =		base-clang ports-gcc

RUN_DEPENDS=		devel/desktop-file-utils \
			sysutils/smartmontools \
			x11/gtk+3,-guic

LIB_DEPENDS=		x11/gtk3mm

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gsc_settings.h

.include <bsd.port.mk>
