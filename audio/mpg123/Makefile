# $OpenBSD: Makefile,v 1.102 2020/06/01 21:59:54 naddy Exp $

COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.26.1
SHARED_LIBS=	mpg123		7.0	# 45.1
SHARED_LIBS+=	out123		2.0	# 3.0
SHARED_LIBS+=	syn123		0.0	# 1.0
CATEGORIES=	audio
HOMEPAGE=	https://mpg123.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg123/} \
		https://mpg123.org/download/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m sndio

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-lfs-alias \
		--with-audio=sndio \
		--with-optimization=0
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# Do not build static modules
pre-patch:
	@cd ${WRKSRC}; mv Makefile.in Makefile.in.beforesubst; sed '\
	    /^src_libout123_modules_.*_la_LINK =/ { \
		N; s/\$$(LIBTOOLFLAGS)/& --tag=disable-static/; \
	    }' Makefile.in.beforesubst >Makefile.in

.include <bsd.port.mk>
