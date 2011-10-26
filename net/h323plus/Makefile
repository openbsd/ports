# $OpenBSD: Makefile,v 1.9 2011/10/26 16:59:51 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 video conferencing library

V=		1_23_0
DISTNAME=	h323plus-v${V}
PKGNAME=	h323plus-${V:S/_/./g}
CATEGORIES=	net devel

SHARED_LIBS=	h323	3.0    # 1.21.0

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL avcodec avutil c crypto expat gsm lber ldap ldap_r
WANTLIB += m pt pthread sasl2 speex ssl stdc++ x264

MASTER_SITES=	${HOMEPAGE}/source/download/

LIB_DEPENDS=	devel/ptlib>=2.10.3 \
		graphics/ffmpeg

WRKDIST=	${WRKDIR}/h323plus

USE_GMAKE=	Yes
ALL_TARGET=	default
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/plugins

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread -lavutil"
CONFIGURE_ARGS=	--disable-localspeex \
		--disable-localgsm \
		--enable-localilbc \
		--enable-gnugk \
		--with-plugin-installdir=h323plus

# http://www.tandberg.com/collateral/tandberg-ITU-license.pdf
CONFIGURE_ARGS += --disable-h46018

# H.460.23/.24. Contact consulting@h323plus.org for licensing terms.
CONFIGURE_ARGS += --disable-h46023

# XXX celtcodec.c:55: error: too many arguments to function 'celt_mode_create'
CONFIGURE_ARGS += --disable-celt

MAKE_ENV=	CC=${CC} CPLUS=${CXX} OH323_BUILDSELF="1" VERBOSE="1"

MAKE_FLAGS=	MAJOR_VERSION=${LIBh323_VERSION:R} \
		MINOR_VERSION=${LIBh323_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/plugins/audio/Speex/Makefile.in \
		${WRKSRC}/plugins/audio/GSM0610/Makefile.in \
		${WRKSRC}/openh323u.mak.in \
		${WRKSRC}/plugins/video/H.263-ffmpeg/h263ffmpeg.cxx
	perl -pi -e 's,h263p_encoder,ff_h263p_encoder,g;' \
		-e 's,h264_decoder,ff_h264_decoder,g;' \
		-e 's,mpeg4_encoder,ff_mpeg4_encoder,g' \
		${WRKSRC}/plugins/configure

post-install:
	cd ${WRKBUILD}/plugins && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} ${INSTALL_TARGET}
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/openh323

.include <bsd.port.mk>
