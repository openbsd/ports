# $OpenBSD: Makefile,v 1.22 2009/10/05 13:59:56 sthen Exp $

COMMENT=	free audio editor

V=		1.3.7
DISTNAME=	audacity-minsrc-${V}
PKGNAME=	audacity-${V}p1
CATEGORIES=	audio

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=audacity/}

HOMEPAGE=	http://audacity.sourceforge.net/

MAINTAINER=	Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c expat glib-2.0 gobject-2.0 gtk-x11-2.0 \
		m ogg pthread sndfile sndio stdc++

BUILD_DEPENDS=	::archivers/zip
LIB_DEPENDS=	wx_base_xml,wx_base_odbc,wx_gtk2_aui,wx_gtk2_html,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_qa,wx_base,wx_gtk2_core,wx_gtk2_richtext:wxWidgets-gtk2->=2.8.6:x11/wxWidgets \
		samplerate.>=1::audio/libsamplerate \
		FLAC.>=8,FLAC++.>=7::audio/flac \
		vorbis.>=5,vorbisfile.>=4,vorbisenc.>=2::audio/libvorbis \
		id3tag.>=2::audio/libid3tag \
		mad.>=2::audio/libmad \
		portaudio::audio/portaudio-svn \
		SoundTouch::audio/soundtouch \
		vamp-hostsdk.>=1::audio/vamp-plugin-sdk
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info-*:misc/shared-mime-info

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			gl_cv_cc_visibility=no

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} \
			${WRKSRC}/lib-src/lib-widget-extra \
			${WRKSRC}/lib-src/portsmf \
			${WRKSRC}/lib-src/FileDialog \
			${WRKSRC}/lib-src/portmixer

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
			--with-midi=local \
			--with-portmixer=local \
			--with-portaudio=system

MAKE_FLAGS=		CC="${CC}"
WRKDIST=		${WRKDIR}/audacity-src-${V}

# Regression tests are in the source tarball but as of 2007, they have
# not been updated for 3 years ; as they're completely out-of-sync with
# the ongoing development, there's no point in running them 
NO_REGRESS=	Yes

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
