# $OpenBSD: Makefile,v 1.8 2009/10/14 12:51:45 ajacoutot Exp $

COMMENT=		last.fm client for GNOME

V=			0.7.1
DISTNAME=		vagalume_$V.orig
PKGNAME=		vagalume-$Vp3
CATEGORIES=		audio x11

HOMEPAGE=		http://vagalume.igalia.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		https://garage.maemo.org/frs/download.php/5574/

WRKDIST=		${WRKDIR}/vagalume-$V.orig

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread pthread-stubs ssl xcb xml2 z

MODULES+=		devel/gettext

RUN_DEPENDS+=		::devel/desktop-file-utils \
			::multimedia/gstreamer-0.10/plugins-base \
			::multimedia/gstreamer-0.10/plugins-good

LIB_DEPENDS=		idn::devel/libidn \
			notify::devel/libnotify \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			curl::net/curl

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-platform=gnome \
			--enable-tray-icon \
			--enable-dbus \
			--enable-im-status \
			--enable-gconf
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
