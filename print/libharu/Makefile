# $OpenBSD: Makefile,v 1.3 2013/03/21 09:01:56 ajacoutot Exp $

COMMENT =	PDF creation library

VERSION =	2_3_0RC2
DISTNAME =	RELEASE_${VERSION}
PKGNAME =	libharu-${VERSION:L:S/_/./g}
EXTRACT_SUFX =	.zip
SHARED_LIBS=	hpdf 0.0 #0.0
CATEGORIES =	print

HOMEPAGE =	http://libharu.org/

# ZLIB/PNG
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/libharu/libharu/archive/

WRKDIST =	${WRKDIR}/libharu-${DISTNAME}
AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-png=${LOCALBASE}

#  for libtoolize
BUILD_DEPENDS =	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	graphics/png
WANTLIB =	m png z

pre-configure:
	cd ${WRKSRC} && ${MAKE_PROGRAM} LIBTOOLIZE=libtoolize \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} -f build.mk

.include <bsd.port.mk>
