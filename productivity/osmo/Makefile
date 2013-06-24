# $OpenBSD: Makefile,v 1.26 2013/06/24 06:15:32 ajacoutot Exp $

COMMENT=	handy personal organizer

DISTNAME=	osmo-0.2.10
CATEGORIES=	productivity

HOMEPAGE=	http://clayo.org/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gringotts gthread-2.0 gtk-x11-2.0 gtkspell ical icalss
WANTLIB += icalvcal m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread tar xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=osmo-pim/}

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgringotts \
		devel/libnotify \
		textproc/libical \
		textproc/gtkspell \
		archivers/libtar

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--without-libsyncml

.include <bsd.port.mk>
