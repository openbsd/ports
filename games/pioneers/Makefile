# $OpenBSD: Makefile,v 1.2 2008/03/03 08:47:10 ajacoutot Exp $

COMMENT=	Settlers of Catan for GNOME/Gtk

DISTNAME=	pioneers-0.11.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11/gnome

PATCHFILES=	pioneers_0_11_3.patch:0

HOMEPAGE=	http://pio.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 audiofile bonobo-2 bonobo-activation c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png popt pthread ssl util xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pio/}
MASTER_SITES0=	http://www.bsdfrog.org/OpenBSD/distfiles/

MODULES=	devel/gettext

BUILD_DEPENDS=	:scrollkeeper-*:textproc/scrollkeeper \
		::x11/gnome/librsvg,no_gnome
RUN_DEPENDS=	:scrollkeeper-*:textproc/scrollkeeper \
		:desktop-file-utils-*:devel/desktop-file-utils \
		::x11/gnome/librsvg,no_gnome \
		::x11/gnome/yelp
LIB_DEPENDS=	gnome-2.>=1900::x11/gnome/libgnome

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_pngtopnm=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	@perl -pi -e 's,games/pioneers,pioneers,g;' \
		-e 's,/usr/share,${PREFIX}/share,g' \
		${WRKSRC}/client/help/C/pioneers-C.omf \
		${WRKSRC}/docs/pioneers.6 \
		${WRKSRC}/docs/pioneers-server-gtk.6 \
		${WRKSRC}/docs/pioneers-server-console.6 \
		${WRKSRC}/docs/pioneersai.6 \
		${WRKSRC}/docs/pioneers-meta-server.6

.include <bsd.port.mk>
