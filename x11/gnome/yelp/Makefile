# $OpenBSD: Makefile,v 1.20 2007/04/27 22:54:23 jasper Exp $

COMMENT=		"GNOME help browser"

DISTNAME=		yelp-2.18.1
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 bz2 \
		c cairo crypto dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 \
		gtk-x11-2.0 jpeg m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		plc4 plds4 png popt pthread ssl stdc++ util xml2 z


MASTER_SITES=		${MASTER_SITE_GNOME:=sources/yelp/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper->=0.3.14:textproc/scrollkeeper \
			:docbook-dsssl-*:textproc/docbook-dsssl \
			:gnome2-user-docs-*:x11/gnome/users-guide
LIB_DEPENDS=		startup-notification-1::devel/startup-notification \
			xulrunner/gtkembedmoz,xulrunner/xpcom,xulrunner/xul::devel/xulrunner,-devel \
			gnomeui-2::x11/gnome/libgnomeui \
			exslt,xslt::textproc/libxslt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--with-gecko=xulrunner \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/yelp/
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/xulrunner/include/" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
