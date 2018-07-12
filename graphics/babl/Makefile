# $OpenBSD: Makefile,v 1.42 2018/07/12 11:35:10 ajacoutot Exp $

COMMENT=		dynamic pixel format conversion library

V=			0.1.52
DISTNAME=		babl-${V}
EXTRACT_SUFX=		.tar.bz2

API_VERSION=		${V:R}
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

SHARED_LIBS +=  babl-0.1             1.4      # 151.1

HOMEPAGE=		http://gegl.org/babl/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

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
