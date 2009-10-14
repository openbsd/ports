# $OpenBSD: Makefile,v 1.6 2009/10/14 14:19:18 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	dynamic pixel format conversion library

V=		0.1.0
DISTNAME=	babl-${V}
CATEGORIES=	graphics devel

SHARED_LIBS=	babl-0.0	2.0 # .100.0

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gegl.org/babl/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gtk.org/pub/babl/${V:R}/

WANTLIB=	m

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_W3M=no \
		ac_cv_path_RSVG=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

# be safe until proven stable
CONFIGURE_ARGS+= --enable-mmx \
		--disable-sse \
		--disable-altivec

.include <bsd.port.mk>
