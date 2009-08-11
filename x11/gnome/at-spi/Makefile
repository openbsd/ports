# $OpenBSD: Makefile,v 1.21 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		GNOME accessibility interface

GNOME_PROJECT=		at-spi
GNOME_VERSION=		1.24.1
PKGNAME=		${DISTNAME}p9

SHARED_LIBS +=	spi                  0.0      # .10.11
SHARED_LIBS +=	loginhelper          0.0      # .0.0
SHARED_LIBS +=	cspi                 0.0      # .10.11

HOMEPAGE=	http://developer.gnome.org/projects/gap/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xtst atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread z pthread-stubs xcb

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	at-spi

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# not enabled in X.org
CONFIGURE_ARGS+=	--disable-xevie

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
