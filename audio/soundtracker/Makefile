# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:41 sthen Exp $

COMMENT=		music tracking tool for X11

V=			0.6.8
DISTNAME=		soundtracker_$V.gtk2_17092006_1613
PKGNAME=		soundtracker-$V
REVISION=		8
CATEGORIES=		audio
HOMEPAGE=		http://www.shaltev.org/programming.html

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://www.shaltev.org/data/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB += fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += popt pthread sndfile sndio z

LIB_DEPENDS=		audio/libsndfile \
			x11/gnome/libgnomeui

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-alsa \
			--disable-sgi \
			--disable-oss \
			--disable-esd \
			--disable-sun \
			--disable-sdl \
			--disable-jack \
			--disable-splash

CFLAGS +=		-fgnu89-inline

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
