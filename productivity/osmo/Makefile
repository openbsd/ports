# $OpenBSD: Makefile,v 1.25 2013/03/11 11:37:55 espie Exp $

COMMENT=	handy personal organizer

DISTNAME=	osmo-0.2.8
REVISION=	8
CATEGORIES=	productivity

HOMEPAGE=	http://clayo.org/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gringotts gthread-2.0 gtk-x11-2.0 gtkspell
WANTLIB += ical icalss icalvcal m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs tar 
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=osmo-pim/}

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgringotts \
		devel/libnotify>=0.7.2 \
		textproc/libxml \
		textproc/libical \
		textproc/gtkspell \
		x11/gtk+2 \
		archivers/libtar

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		BUILD_CFLAGS="${CFLAGS}"
CONFIGURE_ARGS=	--without-libsyncml
CFLAGS+=       -I${LOCALBASE}/include/libical/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/po/Makefile.in

.include <bsd.port.mk>
