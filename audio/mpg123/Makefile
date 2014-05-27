# $OpenBSD: Makefile,v 1.73 2014/05/27 21:58:33 naddy Exp $

COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.20.0
SHARED_LIBS=	mpg123		4.0	# 40.3
CATEGORIES=	audio
HOMEPAGE=	http://www.mpg123.de/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg123/} \
		http://www.mpg123.de/download/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c ltdl m sndio
LIB_DEPENDS=	devel/libtool,-ltdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--disable-lfs-alias \
		--with-audio=sndio \
		--with-module-suffix=.so \
		--with-optimization=0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

.if   ${MACHINE_ARCH} == "amd64"
## no support for AVX instructions in as(1)
#USE_GMAKE=	Yes
#BUILD_DEPENDS+=	devel/yasm
## no kernel support for AVX
CONFIGURE_ENV+=	YASM=no

.elif ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--with-cpu=arm_nofpu

.endif

.include <bsd.port.mk>
