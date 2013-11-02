# $OpenBSD: Makefile,v 1.30 2013/11/02 15:55:53 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Open Phone Abstraction Library

V=		3.10.11
DISTNAME=	opal-${V}
EXTRACT_SUFX=	.tar.bz2
SUBST_VARS=	V
REVISION=	0

SHARED_LIBS=	opal	3.1	# 3.10.11

CATEGORIES=	net devel telephony

HOMEPAGE=	http://www.opalvoip.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL 1.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c celt0 crypto gsm m pt spandsp speex speexdsp stdc++
WANTLIB += theora tiff x264 avutil

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opalvoip/}

LIB_DEPENDS=	audio/celt \
		devel/ptlib \
		telephony/spandsp

# dlopen(3) libavcodec.so.X.Y; shows as "Extra:" in check-lib-depends
# but we want to be sure we track ABI and shared lib version changes
# see LIBAVCODEC_LIB_NAME in plugins/configure
WANTLIB+=	avcodec
LIB_DEPENDS+=	graphics/ffmpeg

ALL_TARGET=	default_target
USE_GMAKE=	Yes
NO_TEST=	Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/plugins

CONFIGURE_STYLE=gnu

# LDFLAGS needed for the spandsp plugin
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_SWIG= #ruby, java

# XXX internal ilbc (port libilbc?)
CONFIGURE_ARGS=	--disable-sbc #bluetooth

# plugins/audio/SILK/ReadMe.txt; not for commercial
# http://developer.skype.com/silk
CONFIGURE_ARGS+= --disable-silk

MAKE_ENV=	VERBOSE=1
MAKE_FLAGS=	RELEASE_LIB_NAME=libopal.so.${LIBopal_VERSION} \
		RELEASE_LIB_FILENAME_SHARED_PAT=libopal.so.${LIBopal_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/configure
	perl -pi -e 's,SUBDIRS\+=\",SUBDIRS=\"\$${SUBDIRS},g' \
		${WRKSRC}/plugins/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/opal
	${INSTALL_DATA} ${WRKSRC}/opal_inc.mak ${PREFIX}/share/opal
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/opal
	rm ${PREFIX}/lib/libopal_s.a

.include <bsd.port.mk>
