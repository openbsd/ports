# $OpenBSD: Makefile,v 1.16 2013/03/11 11:10:51 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	dynamic pixel format conversion library

API_VERSION=	0.1
V=		${API_VERSION}.10
DISTNAME=	babl-${V}
CATEGORIES=	graphics devel

SHARED_LIBS +=  babl-${API_VERSION}		1.0      # 105.1

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gegl.org/babl/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.gimp.org/pub/babl/${V:R}/ \
		ftp://ftp.sunet.se/pub/gnu/babl/${V:R}/ \
		ftp://ftp.cs.umn.edu/pub/gimp/pub/babl/${V:R}/

WANTLIB=	m

LIBTOOL_FLAGS=	--tag=disable-static

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

SUBST_VARS=	API_VERSION

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_W3M=no \
		ac_cv_path_RSVG=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=673580
#BUILD_DEPENDS += lang/vala \
#		devel/gobject-introspection
CONFIGURE_ARGS += --without-vala \
		--disable-introspection

# be safe until proven stable
CONFIGURE_ARGS+= --enable-mmx \
		--disable-sse \
		--disable-altivec

.include <bsd.port.mk>
