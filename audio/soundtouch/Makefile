# $OpenBSD: Makefile,v 1.14 2015/07/07 09:29:37 bentley Exp $

COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.9.0
SHARED_LIBS +=	SoundTouch	2.0      # .0.0
CATEGORIES=	audio devel

HOMEPAGE=	http://www.surina.net/soundtouch/

MAINTAINER=	Eric Lalonde <eric.c.lalonde@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m stdc++

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

WRKDIST=	${WRKDIR}/soundtouch

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --disable-x86-optimizations

MAKE_FLAGS=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		CXXFLAGS="${CXXFLAGS}"

pre-configure:
	cd ${WRKSRC} && \
		touch NEWS README AUTHORS ChangeLog && env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./bootstrap

.include <bsd.port.mk>
