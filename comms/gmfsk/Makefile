# $OpenBSD: Makefile,v 1.8 2008/12/17 18:40:13 jasper Exp $

COMMENT=	GNOME multimode HF terminal

DISTNAME=	gmfsk-0.6
PKGNAME=	${DISTNAME}p5
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://gmfsk.connect.fi/
MASTER_SITES=	http://gmfsk.connect.fi/	\
		http://he.fi/pub/ham/unix/linux/hfmodems/

MAINTAINER=	Jason Wright <jason@openbsd.org>

# GPLv2 - FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xcomposite Xdamage Xrandr Xrender audiofile c esd \
		expat fontconfig freetype pthread stdc++ m z atk-1.0 \
		cairo gailutil glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 iconv intl pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png ORBit-2 art_lgpl_2 bonobo-2 \
		bonobo-activation bonoboui-2 gconf-2 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 pixman-1 popt xml2

RUN_DEPENDS=		::textproc/rarian \
			:yelp-*:x11/gnome/yelp
BUILD_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		fftw.>=2::math/fftw \
			gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2 \
			hamlib.>=2::comms/hamlib \
			gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-hamlib \
			--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gmfsk
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=		Yes

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
