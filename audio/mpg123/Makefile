# $OpenBSD: Makefile,v 1.68 2013/03/25 12:23:41 naddy Exp $

COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.15.2
SHARED_LIBS=	mpg123		3.1	# 37.1
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

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--with-cpu=arm_nofpu
.endif

.include <bsd.port.mk>
