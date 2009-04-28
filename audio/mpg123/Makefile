# $OpenBSD: Makefile,v 1.42 2009/04/28 19:07:26 naddy Exp $

COMMENT=	MPEG-1/2 audio layer 1, 2, and 3 player

DISTNAME=	mpg123-1.7.3
SHARED_LIBS=	mpg123	1.0	# .14.4
CATEGORIES=	audio
HOMEPAGE=	http://www.mpg123.de/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg123/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m sndio
LIB_DEPENDS=	ltdl::devel/libtool,-ltdl

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--with-audio=sndio \
		--with-optimization=0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/src/libmpg123/.libs -L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

.if   ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--with-cpu=generic_nofpu
.elif ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--with-cpu=x86
.else
CONFIGURE_ARGS+=--with-cpu=generic_fpu
.endif

.include <bsd.port.mk>
