# $OpenBSD: Makefile,v 1.1.1.1 2008/04/10 14:11:43 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	dynamic pixel format conversion library

V=		0.0.20
DISTNAME=	babl-${V}
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
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

pre-configure:
	@perl -pi -e 's,!!LIBbabl-0.0_VERSION!!,${LIBbabl-0.0_VERSION},g' \
		${WRKSRC}/extensions/Makefile.in

.include <bsd.port.mk>
