# $OpenBSD: Makefile,v 1.4 2009/08/10 06:34:09 kili Exp $

COMMENT=		lightweight tasklist

DISTNAME=		tasks-0.13
PKGNAME=		${DISTNAME}p2
CATEGORIES=		productivity x11

HOMEPAGE=		http://pimlico-project.org/tasks.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pimlico-project.org/sources/tasks/

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 \
		bonobo-2 bonobo-activation c cairo expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnomevfs-2 gnutls \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png popt pthread \
		xml2 z dbus-1 gio-2.0 soup-2.4 pthread-stubs xcb

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
			--disable-owl \
			--disable-hildon \
			--disable-omoko
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
