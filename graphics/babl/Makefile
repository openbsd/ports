# $OpenBSD: Makefile,v 1.38 2018/04/27 08:52:56 ajacoutot Exp $

COMMENT=		dynamic pixel format conversion library

API_VERSION=		0.1
SUBST_VARS=		API_VERSION
V=			${API_VERSION}.46
DISTNAME=		babl-${V}
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

CATEGORIES=		graphics devel

SHARED_LIBS +=  babl-0.1             1.4      # 145.1

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
