# $OpenBSD: Makefile,v 1.57 2019/03/06 20:42:12 ajacoutot Exp $

BROKEN=		missing portmidi support

COMMENT=	free audio editor

V=		2.2.2
DISTNAME=	Audacity-${V}
PKGNAME=	audacity-${V}
CATEGORIES=	audio

MASTER_SITES=	https://github.com/audacity/audacity/archive/

HOMEPAGE=	http://audacity.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ SoundTouch X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += id3tag intl m mad ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += portaudio samplerate sndfile tag vamp-hostsdk vorbis
# XXX wxwidgets WANTLIB
WANTLIB += vorbisenc vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	archivers/zip \
		devel/gettext-tools \
		shells/bash
LIB_DEPENDS=	x11/wxWidgets>=3.0.4 \
		audio/libsoxr \
		audio/flac \
		audio/libvorbis \
		audio/libid3tag \
		audio/libmad \
		audio/portaudio-svn>=1406p1 \
		audio/soundtouch \
		audio/taglib
# XXX libtool/ld(1) fail to find libvamp-hostsdk.so
#LIB_DEPENDS+=	audio/vamp-plugin-sdk>=2.2.1p0
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CC="${CC}" CXX="${CXX}" OBJCXX="${CXX}" \
			CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib ${LDFLAGS}"
# Silence noisy warnings
CONFIGURE_ENV+=		CXXFLAGS="-Wno-inconsistent-missing-override ${CXXFLAGS}"

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
			--with-libsoxr=system \
			--with-libvorbis=system \
			--with-libmad=system \
			--with-libflac=system \
			--with-libid3tag=system \
			--with-portaudio=system \
			--with-soundtouch=system \
			--without-libtwolame \
			--without-ffmpeg \
			--without-redland \
			--without-slv2 \
			--without-liblrdf \
			--with-portmixer=no
# XXX libtool/ld(1) fail to find libvamp-hostsdk.so
CONFIGURE_ARGS+= 	--with-libvamp=no

WRKDIST=		${WRKDIR}/audacity-${DISTNAME}

# Regression tests are in the source tarball but as of 2007, they have
# not been updated for 3 years ; as they're completely out-of-sync with
# the ongoing development, there's no point in running them 
NO_TEST=	Yes

# dummy Makefile to disable portmixer
post-extract:
	printf 'all:\ninstall:\n' > ${WRKSRC}/lib-src/portmixer/Makefile

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
