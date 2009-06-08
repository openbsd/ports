# $OpenBSD: Makefile,v 1.15 2009/06/08 16:58:15 ajacoutot Exp $

COMMENT=	GNOME multimode HF terminal

GNOME_PROJECT=	gmfsk
GNOME_VERSION=	0.6
PKGNAME=	${DISTNAME}p11
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://gmfsk.connect.fi/
MASTER_SITES=	${HOMEPAGE}	\
		http://he.fi/pub/ham/unix/linux/hfmodems/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	Jason Wright <jason@openbsd.org>

# GPLv2 - FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png popt pthread stdc++ xml2
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

MODGNOME_HELP_FILES=	Yes
USE_GMAKE=		No
MODGCONF2_SCHEMAS_DIR=	gmfsk

BUILD_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		fftw.>=2::math/fftw \
			gailutil,gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2 \
			hamlib.>=2::comms/hamlib \
			gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-hamlib
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=		Yes

.include <bsd.port.mk>
