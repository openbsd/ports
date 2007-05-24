# $OpenBSD: Makefile,v 1.7 2007/05/24 09:45:01 ajacoutot Exp $

COMMENT=	"free audio editor"

V=		1.3.2
DISTNAME=	audacity-src-${V}
PKGNAME=	audacity-${V}p1
CATEGORIES=     audio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=audacity/}

HOMEPAGE=	http://audacity.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c m ossaudio pthread stdc++ ogg expat sndfile

BUILD_DEPENDS=	::archivers/zip
LIB_DEPENDS=	wx_base_xml,wx_base_odbc,wx_gtk2_html,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_qa,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.6.3:x11/wxWidgets \
		samplerate.>=1::audio/libsamplerate \
		FLAC.>=7,FLAC++.>=6::audio/flac \
		vorbis.>=5,vorbisfile.>=4,vorbisenc.>=2::audio/libvorbis \
		id3tag.>=2::audio/libid3tag \
		mad.>=2::audio/libmad
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-unicode \
			--with-id3=system \
			--with-vorbis=system \
			--with-libflac=system \
			--with-libmad=system \
			--with-libsndfile=system \
			--with-libsamplerate=system \
			--with-expat=system \
			--without-libresample \
			--with-nyquist=local \
			--with-ladspa \
			--with-portmixer \
			--with-soundtouch=local \
			--with-portaudio=v18 \
			--with-help

MAKE_FLAGS=		CC="${CC}"
WRKDIST=		${WRKDIR}/${DISTNAME}-beta

REGRESS_FLAGS=		LDFLAGS="-L${X11BASE}/lib"

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/src/export/ExportMP3.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/images/AudacityLogo.xpm \
		${PREFIX}/share/pixmaps/audacity.xpm

.include <bsd.port.mk>
