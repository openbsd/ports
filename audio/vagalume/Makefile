# $OpenBSD: Makefile,v 1.10 2010/03/20 16:57:30 jasper Exp $

COMMENT=		last.fm client for GNOME

V=			0.8.2
DISTNAME=		vagalume_$V.orig
PKGNAME=		vagalume-$V
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
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ssl xcb xml2 z

MODULES+=		devel/gettext

RUN_DEPENDS+=		::devel/desktop-file-utils \
			::multimedia/gstreamer-0.10/plugins-good

LIB_DEPENDS=		idn::devel/libidn \
			notify::devel/libnotify \
			gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base \
			curl::net/curl

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

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
