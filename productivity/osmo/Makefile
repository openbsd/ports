# $OpenBSD: Makefile,v 1.19 2011/04/21 07:06:07 ajacoutot Exp $

COMMENT=	handy personal organizer

DISTNAME=	osmo-0.2.8
REVISION=	3
CATEGORIES=	productivity

HOMEPAGE=	http://clayo.org/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread z dbus-1 dbus-glib-1 gio-2.0 \
		pthread-stubs xcb gthread-2.0 xcb-render xcb-render-util \
		gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 xml2 ical icalss \
		icalvcal gringotts notify gtkspell

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=osmo-pim/}

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgringotts \
		devel/libnotify>=0.7.2 \
		textproc/libxml \
		textproc/libical \
		textproc/gtkspell \
		x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils

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
