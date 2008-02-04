# $OpenBSD: Makefile,v 1.2 2008/02/04 17:55:18 jasper Exp $

COMMENT=		GNOME accessibility interface

GNOME_PROJECT=		at-spi
GNOME_VERSION=		1.20.1
SHARED_LIBS +=	spi                  0.0      # .10.11
SHARED_LIBS +=	loginhelper          0.0      # .0.0
SHARED_LIBS +=	cspi                 0.0      # .10.11
PKGNAME=		${DISTNAME}p0

HOMEPAGE=	http://developer.gnome.org/projects/gap/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xevie Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xtst atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png pthread z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_ARGS+=	--enable-xevie
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
