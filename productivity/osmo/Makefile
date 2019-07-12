# $OpenBSD: Makefile,v 1.36 2019/07/12 20:48:59 sthen Exp $

COMMENT=	handy personal organizer

DISTNAME=	osmo-0.2.10
CATEGORIES=	productivity
REVISION=	6

HOMEPAGE=	http://clayo.org/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gringotts
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkspell ical icalss icalvcal iconv
WANTLIB += icui18n icuuc intl lzma m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread tar xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=osmo-pim/}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	security/libgringotts \
		devel/libnotify \
		textproc/libical \
		textproc/gtkspell \
		archivers/libtar

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--without-libsyncml

.include <bsd.port.mk>
