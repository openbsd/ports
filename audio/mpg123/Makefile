COMMENT=	fast console MPEG audio player and decoder library

DISTNAME=	mpg123-1.32.7
SHARED_LIBS=	mpg123		7.3	# 48.1
SHARED_LIBS+=	out123		2.2	# 5.0
SHARED_LIBS+=	syn123		1.0	# 2.2
CATEGORIES=	audio
HOMEPAGE=	https://mpg123.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=mpg123/} \
		https://mpg123.org/download/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m sndio

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
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
