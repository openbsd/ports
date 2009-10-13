# $OpenBSD: Makefile,v 1.5 2009/10/13 11:01:22 jasper Exp $

COMMENT=		lightweight tasklist

DISTNAME=		tasks-0.16
CATEGORIES=		productivity x11

HOMEPAGE=		http://pimlico-project.org/tasks.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pimlico-project.org/sources/tasks/

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 bonobo-2
WANTLIB += bonobo-activation c cairo dbus-1 expat fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += ical icalss icalvcal m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 xcb xml2
WANTLIB += z

MODULES=		devel/gettext \
			textproc/intltool

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		ecal-1.2,edataserver-1.2::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gtk \
			--disable-hildon \
			--disable-omoko
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
