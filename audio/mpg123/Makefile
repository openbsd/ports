# $OpenBSD: Makefile,v 1.110 2021/11/14 18:21:51 naddy Exp $

COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.29.2
SHARED_LIBS=	mpg123		7.1	# 46.6
SHARED_LIBS+=	out123		2.1	# 4.3
SHARED_LIBS+=	syn123		0.1	# 1.4
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
