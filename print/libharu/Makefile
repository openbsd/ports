# $OpenBSD: Makefile,v 1.4 2014/04/19 15:50:07 jturner Exp $

COMMENT =	PDF creation library

VERSION =	2_3_0
DISTNAME =	libharu-${VERSION:S/_/./g}
DISTFILES =	${DISTNAME}{RELEASE_${VERSION}}.tar.gz
SHARED_LIBS=	hpdf 0.1 #2.3
CATEGORIES =	print

HOMEPAGE =	http://libharu.org/

# ZLIB/PNG
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/libharu/libharu/archive/

WRKDIST =	${WRKDIR}/libharu-${DISTNAME}
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-png=${LOCALBASE}

#  for libtoolize
BUILD_DEPENDS =	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	graphics/png
WANTLIB =	m png z

WRKDIST =	${WRKDIR}/libharu-RELEASE_${VERSION}

pre-configure:
	cd ${WRKSRC} && ${MAKE_PROGRAM} LIBTOOLIZE=libtoolize \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} -f build.mk

.include <bsd.port.mk>
