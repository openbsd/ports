# $OpenBSD: Makefile,v 1.9 2019/11/09 12:19:15 ajacoutot Exp $

COMMENT =	PDF creation library

VERSION =	2_3_0
GH_ACCOUNT =	libharu
GH_PROJECT =	libharu
GH_TAGNAME =	RELEASE_${VERSION}
DISTNAME =	${GH_PROJECT}-${VERSION:S/_/./g}
SHARED_LIBS=	hpdf 0.1 #2.3
CATEGORIES =	print

HOMEPAGE =	http://libharu.org/

# ZLIB/PNG
PERMIT_PACKAGE =	Yes

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
