# $OpenBSD: Makefile,v 1.3 2008/04/11 21:33:29 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	dynamic pixel format conversion library

V=		0.0.20
DISTNAME=	babl-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics devel

SHARED_LIBS=	babl-0.0	0.0 # .20.0

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
		ac_cv_path_INKSCAPE=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

pre-configure:
	@perl -pi -e 's,!!LIBbabl-0.0_VERSION!!,${LIBbabl-0.0_VERSION},g' \
		${WRKSRC}/extensions/Makefile.in

.include <bsd.port.mk>
