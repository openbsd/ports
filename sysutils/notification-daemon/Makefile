# $OpenBSD: Makefile,v 1.1.1.1 2007/10/23 14:06:07 jasper Exp $

COMMENT=		send small notifications to your desktop

DISTNAME=		notification-daemon-0.3.7
CATEGORIES=		sysutils net

HOMEPAGE=		http://www.galago-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 XRes Xau Xcursor Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread \
		startup-notification-1 xml2 z

MASTER_SITES=		${HOMEPAGE}/files/releases/source/notification-daemon/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		::textproc/p5-XML-Parser

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-dbus-sys="${SYSCONFDIR}/dbus-1/system.d" \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/notification-daemon \
			--disable-schemas-install \
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=		gconf-2::devel/gconf2 \
			wnck-1::devel/libwnck \
			dbus-glib-1::x11/dbus-glib \
			sexy::x11/libsexy

.include <bsd.port.mk>
