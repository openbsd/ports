BROKEN=		crashes at startup; keys_init -> keys_make_xkeys -> qsort

COMMENT=	music tracking tool for X11

DISTNAME=	soundtracker-1.0.1
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	audio

HOMEPAGE=	http://soundtracker.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread sndfile
WANTLIB += sndio z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=soundtracker/}

LIB_DEPENDS=		audio/libsndfile \
			x11/gtk+2
RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS+=		devel/gettext,-tools
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_ARGS=		--disable-alsa \
			--disable-sgi \
			--disable-oss \
			--disable-esd \
			--disable-sun \
			--disable-sdl \
			--disable-jack \
			--disable-splash

CFLAGS+=		-fgnu89-inline

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lsndio"

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
