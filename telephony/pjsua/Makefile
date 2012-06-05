# $OpenBSD: Makefile,v 1.25 2012/06/05 23:15:22 fgsch Exp $

COMMENT=		lightweight sip client

VERSION=		2.0
DISTNAME=		pjproject-${VERSION}
PKGNAME=		pjsua-${VERSION}
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		telephony

HOMEPAGE=		http://www.pjsip.org/
MASTER_SITES=		${HOMEPAGE}release/${VERSION}/
MAINTAINER=		Christopher Zimmermann <madroach@zakweb.de>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB =	avcodec avformat avutil bz2 c crypto gsm m mp3lame \
		ogg orc-0.4 portaudio pthread schroedinger-1.0 speex \
		speexdsp ssl swscale theoradec theoraenc vorbis vorbisenc \
		vpx x264 xvidcore z

LIB_DEPENDS=		audio/gsm \
			audio/portaudio-svn \
			audio/speex \
			graphics/ffmpeg

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS=		--disable-oss \
			--with-external-gsm \
			--with-external-pa \
			--with-external-speex
CONFIGURE_ENV+=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_lib_uuid_uuid_generate=no

USE_GMAKE=		Yes
NO_REGRESS=		Yes

post-extract:
	rm -f ${WRKSRC}/configure
	ln -s ${WRKSRC}/aconfigure.ac ${WRKSRC}/configure.ac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pjsip-apps/bin/pjsua* ${PREFIX}/bin/pjsua

.include <bsd.port.mk>
