# $OpenBSD: Makefile,v 1.3 2007/07/29 14:40:58 ajacoutot Exp $

COMMENT=	Gnome multimode HF terminal

DISTNAME=	gmfsk-0.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://gmfsk.connect.fi/
MASTER_SITES=	http://gmfsk.connect.fi/	\
		http://he.fi/pub/ham/unix/linux/hfmodems/

MAINTAINER=	Jason Wright <jason@openbsd.org>

# GPL - FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama		\
	Xrandr Xrender c expat fontconfig freetype m pthread stdc++ z	\
	atk-1.0 cairo glib-2.0 glitz gmodule-2.0 gobject-2.0		\
	gthread-2.0 iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0	\
	png ORBit-2 art_lgpl_2 bonobo-2 bonobo-activation bonoboui-2	\
	gconf-2 gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 popt xml2

RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
BUILD_DEPENDS=		${RUN_DEPENDS}
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
