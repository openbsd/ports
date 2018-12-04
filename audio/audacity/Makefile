# $OpenBSD: Makefile,v 1.53 2018/12/04 20:44:56 naddy Exp $

COMMENT=	free audio editor

V=		1.3.9
DISTNAME=	audacity-minsrc-${V}
PKGNAME=	audacity-${V}
REVISION=	16
CATEGORIES=	audio

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=audacity/}

HOMEPAGE=	http://audacity.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ SoundTouch X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += id3tag intl m mad ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += portaudio samplerate sndfile tag vamp-hostsdk vorbis
WANTLIB += vorbisenc vorbisfile wx_base wx_base_net wx_base_odbc
WANTLIB += wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc
WANTLIB += z

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	archivers/zip \
		devel/gettext-tools
LIB_DEPENDS=	x11/wxWidgets>=2.8.6 \
		audio/libsamplerate \
		audio/flac \
		audio/libvorbis \
		audio/libid3tag \
		audio/libmad \
		audio/portaudio-svn>=1406p1 \
		audio/soundtouch \
		audio/vamp-plugin-sdk>=2.2.1p0 \
		audio/taglib
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			gl_cv_cc_visibility=no

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} \
			${WRKSRC}/lib-src/lib-widget-extra \
			${WRKSRC}/lib-src/portsmf \
			${WRKSRC}/lib-src/FileDialog \
			${WRKSRC}/lib-src/sbsms \
			${WRKSRC}/lib-src/libnyquist

CONFIGURE_ARGS=		--enable-unicode \
			--enable-ladspa \
			--enable-nyquist \
			--with-lib-preferences=system \
			--with-libsndfile=system \
			--with-expat=system \
			--with-libsamplerate=system \
			--without-libresample \
			--with-libvorbis=system \
			--with-libmad=system \
			--with-libflac=system \
			--with-libid3tag=system \
			--with-soundtouch=system \
			--with-libvamp=system \
			--without-libtwolame \
			--without-ffmpeg \
			--without-redland \
			--without-slv2 \
			--without-liblrdf \
			--with-portmixer=no

MAKE_FLAGS=		CC="${CC}"
WRKDIST=		${WRKDIR}/audacity-src-${V}

# Regression tests are in the source tarball but as of 2007, they have
# not been updated for 3 years ; as they're completely out-of-sync with
# the ongoing development, there's no point in running them 
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/images/AudacityLogo.xpm \
		${PREFIX}/share/pixmaps/audacity.xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/src/audacity.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mime/packages
	${INSTALL_DATA} ${WRKSRC}/src/audacity.xml \
		${PREFIX}/share/mime/packages/

.include <bsd.port.mk>
