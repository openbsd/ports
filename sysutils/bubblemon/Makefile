# $OpenBSD: Makefile,v 1.20 2006/06/13 13:32:48 bernd Exp $

COMMENT=		"GNOME panel applet that displays the CPU + memory load"

DISTNAME=		bubblemon-2.0.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		sysutils x11/gnome

HOMEPAGE=		http://www.d.kth.se/~d92-jwa/code/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		http://savannah.nongnu.org/download/bubblemon/

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		panel-applet-2::x11/gnome/panel \
			gtop-2.0.3.0::devel/libgtop2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE ORBit-2 SM X11 Xau c fontconfig \
			art_lgpl_2 atk-1.0.0.0 \
			bonobo-2 bonobo-activation bonoboui-2 \
			freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnomecanvas-2 \
			gnomeui-2 gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 \
			gtk-x11-2.0.0.0 m pango-1.0.0.0 cairo  \
			pangoft2-1.0.0.0 pangocairo-1.0.0.0 popt pthread xml2 z

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
