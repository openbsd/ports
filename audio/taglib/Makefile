# $OpenBSD: Makefile,v 1.14 2010/05/17 11:21:50 jasper Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.6.3
CATEGORIES=	audio devel

MASTER_SITES=	http://ktown.kde.org/~wheeler/files/src/
SHARED_LIBS +=	tag                  8.0      # .10.0
SHARED_LIBS +=	tag_c                2.0      # .0.0

HOMEPAGE= 	http://ktown.kde.org/~wheeler/taglib.html

# LGPLv2.1 / MPLv1.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes

WANTLIB=	stdc++ m z

CONFIGURE_ENV=	LIBS="-lstdc++ -lm"
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-asf \
		--enable-mp4

.include <bsd.port.mk>
