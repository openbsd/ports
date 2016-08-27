# $OpenBSD: Makefile,v 1.25 2016/08/27 15:49:23 ajacoutot Exp $

COMMENT=		dynamic pixel format conversion library

API_VERSION=		0.1
SUBST_VARS=		API_VERSION
V=			${API_VERSION}.18
DISTNAME=		babl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		graphics devel

SHARED_LIBS +=  babl-0.1             1.2      # 117.1

HOMEPAGE=		http://gegl.org/babl/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread

MASTER_SITES=		http://download.gimp.org/pub/babl/${V:R}/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-pthread" \
			ac_cv_path_W3M=no \
			ac_cv_path_RSVG=no

# be safe until proven stable
CONFIGURE_ARGS +=	--enable-mmx \
			--disable-sse \
			--disable-sse2 \
			--disable-altivec

post-install:
	rm ${PREFIX}/lib/babl-${API_VERSION}/*.{a,la}

.include <bsd.port.mk>
