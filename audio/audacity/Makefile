# $OpenBSD: Makefile,v 1.38 2013/03/21 08:45:11 ajacoutot Exp $

COMMENT=	free audio editor

V=		1.3.9
DISTNAME=	audacity-minsrc-${V}
PKGNAME=	audacity-${V}
REVISION=	5
CATEGORIES=	audio

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=audacity/}

HOMEPAGE=	http://audacity.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c expat glib-2.0 gobject-2.0 gtk-x11-2.0 m ogg pthread
WANTLIB += sndfile sndio stdc++ wx_base_xml wx_base_odbc wx_gtk2_aui
WANTLIB += wx_gtk2_html wx_gtk2_adv wx_gtk2_xrc wx_base_net wx_gtk2_dbgrid
WANTLIB += wx_gtk2_qa wx_base wx_gtk2_core wx_gtk2_richtext samplerate>=1
WANTLIB += FLAC>=8 FLAC++>=7 vorbis>=5 vorbisfile>=4 vorbisenc>=2
WANTLIB += id3tag>=2 mad>=2 portaudio>=1 SoundTouch vamp-hostsdk>=1
WANTLIB += tag

BUILD_DEPENDS=	archivers/zip
LIB_DEPENDS=	x11/wxWidgets>=2.8.6 \
		audio/libsamplerate \
		audio/flac \
		audio/libvorbis \
		audio/libid3tag \
		audio/libmad \
		audio/portaudio-svn>=1406p1 \
		audio/soundtouch \
		audio/vamp-plugin-sdk \
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

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-unicode \
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
