# $OpenBSD: Makefile,v 1.93 2017/10/06 15:54:56 naddy Exp $

COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.25.7
SHARED_LIBS=	mpg123		6.2	# 44.5
SHARED_LIBS+=	out123		1.0	# 2.1
CATEGORIES=	audio
HOMEPAGE=	https://www.mpg123.de/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg123/} \
		https://www.mpg123.de/download/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m sndio

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-lfs-alias \
		--with-audio=sndio \
		--with-optimization=0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

.if   ${MACHINE_ARCH} == "amd64"
# no support for AVX instructions in as(1)
USE_GMAKE=	Yes
BUILD_DEPENDS+=	devel/yasm

.elif ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--with-cpu=arm_nofpu

.endif

# Do not build static modules
pre-patch:
	@cd ${WRKSRC}; mv Makefile.in Makefile.in.beforesubst; sed '\
	    /^src_libout123_modules_.*_la_LINK =/ { \
		N; s/\$$(LIBTOOLFLAGS)/& --tag=disable-static/; \
	    }' Makefile.in.beforesubst >Makefile.in

.include <bsd.port.mk>
