# $OpenBSD: Makefile,v 1.3 2009/08/10 06:31:43 kili Exp $

COMMENT=		modular geoinformation service on top of D-Bus

DISTNAME=		geoclue-0.11.1
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=  geoclue              0.0      # .0.0
CATEGORIES=		geo devel

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://folks.o-hand.com/jku/geoclue-releases/

MODULES=		devel/gettext

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xml2 z

LIB_DEPENDS=		gconf-2::devel/gconf2 \
			gps::misc/gpsd

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gtk-doc=no
#CONFIGURE_ARGS+=	--enable-system-bus
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
