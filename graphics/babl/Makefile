# $OpenBSD: Makefile,v 1.11 2011/11/17 11:42:32 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	dynamic pixel format conversion library

V=		0.1.4
DISTNAME=	babl-${V}
REVISION=	0
CATEGORIES=	graphics devel

SHARED_LIBS=	babl-0.1	1.0 # .103.1

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gegl.org/babl/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gimp.org/pub/babl/${V:R}/ \
		ftp://ftp.sunet.se/pub/gnu/babl/${V:R}/ \
		ftp://ftp.cs.umn.edu/pub/gimp/pub/babl/${V:R}/

WANTLIB=	m

LIBTOOL_FLAGS=	--tag=disable-static

BUILD_DEPENDS=	devel/gobject-introspection

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_W3M=no \
		ac_cv_path_RSVG=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-static

# be safe until proven stable
CONFIGURE_ARGS+= --enable-mmx \
		--disable-sse \
		--disable-altivec

.include <bsd.port.mk>
