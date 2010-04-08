# $OpenBSD: Makefile,v 1.20 2010/04/08 08:47:09 jasper Exp $

COMMENT=		music tracking tool for X11

V=			0.6.8
DISTNAME=		soundtracker_$V.gtk2_17092006_1613
PKGNAME=		soundtracker-$Vp0
CATEGORIES=		audio
HOMEPAGE=		http://www.shaltev.org/programming.html

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.shaltev.org/data/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1
WANTLIB += expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png popt pthread pthread-stubs
WANTLIB += sndio xcb xml2 z

LIB_DEPENDS=		sndfile::audio/libsndfile \
			gnomeui-2::x11/gnome/libgnomeui

MODULES=		devel/gettext

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-alsa \
			--disable-sgi \
			--disable-oss \
			--disable-esd \
			--disable-sun \
			--disable-sdl \
			--disable-jack \
			--disable-splash
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DDRIVER_SNDIO" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lsndio"

WRKDIST= 		${WRKDIR}/soundtracker-$V.gtk2

DOCS=			FAQ NEWS README \
			doc/xi.txt doc/xm.txt doc/xp.txt

post-extract:
	@ln -s ${FILESDIR}/sndio-input.c ${WRKSRC}/app/drivers
	@ln -s ${FILESDIR}/sndio-output.c ${WRKSRC}/app/drivers

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/soundtracker
	cd ${WRKSRC} && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/soundtracker

.include <bsd.port.mk>
