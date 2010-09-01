# $OpenBSD: Makefile,v 1.13 2010/09/01 14:42:51 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Open Phone Abstraction Library

V=		3.6.8
DISTNAME=	opal-${V}

REVISION=	0

SUBST_VARS+=	V

SHARED_LIBS=	opal	1.0 # .2.2.11

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net devel telephony

HOMEPAGE=	http://www.opalvoip.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL 1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opalvoip/}

WANTLIB += SDL c crypto expat lber ldap ldap_r m ogg sasl2
WANTLIB += ssl speex speexdsp x264 theora gsm pt pthread stdc++

LIB_DEPENDS=	::audio/speex \
		::multimedia/libtheora \
		::audio/gsm \
		::devel/ptlib \
		::multimedia/x264

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ffmpeg->=20100512:graphics/ffmpeg # dlopen(3) libavcodec.so

ALL_TARGET=	opt
OPAL_FILE=	libopal.so

MAKE_ENV=	CC=${CC} CPLUS=${CXX} VERBOSE=1
MAKE_FLAGS=	OPAL_FILE=${OPAL_FILE} \
		RELEASE_LIB_FILENAME_SHARED_PAT=${OPAL_FILE}.${LIBopal_VERSION}

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/plugins

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	--disable-localspeex \
		--disable-localgsm \
		--enable-plugins

# XXX
# ekiga:/usr/local/lib/opal-3.6.6/lid/vpb_lid_pwplugin.so:
# undefined symbol '_Z18vpb_set_event_maskit'
# <...>
CONFIGURE_ARGS+= --disable-vpb

.ifndef DEBUG
CONFIGURE_ENV+=	DEBUG_BUILD="no"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/opal
	${INSTALL_DATA} ${WRKSRC}/opal_inc.mak ${PREFIX}/share/opal
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/opal

.include <bsd.port.mk>
