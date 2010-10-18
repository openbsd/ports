# $OpenBSD: Makefile,v 1.15 2010/10/18 16:52:47 espie Exp $

COMMENT=		last.fm client for GNOME

V=			0.8.2
DISTNAME=		vagalume_$V.orig
PKGNAME=		vagalume-$V
REVISION=		2
CATEGORIES=		audio x11

HOMEPAGE=		http://vagalume.igalia.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://vagalume.igalia.com/files/source/

WRKDIST=		${WRKDIR}/vagalume-$V

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ssl xcb xml2 z idn notify gstinterfaces-0.10 curl
WANTLIB += xcb-render xcb-render-util

MODULES+=		devel/gettext \
			textproc/intltool

RUN_DEPENDS+=		::devel/desktop-file-utils \
			::multimedia/gstreamer-0.10/plugins-good

LIB_DEPENDS=		::devel/libidn \
			::devel/libnotify \
			::multimedia/gstreamer-0.10/plugins-base \
			::net/curl

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-platform=gnome \
			--enable-tray-icon \
			--enable-dbus \
			--enable-im-status \
			--enable-gconf
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		themebigicondir="${PREFIX}/share/icons/hicolor/scalable/actions" \
			themesmallicondir="${PREFIX}/share/icons/hicolor/scalable/actions"

.include <bsd.port.mk>
