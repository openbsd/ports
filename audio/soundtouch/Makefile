# $OpenBSD: Makefile,v 1.21 2017/07/23 09:26:26 espie Exp $

COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.9.2
SHARED_LIBS +=	SoundTouch	3.0      # .0.0
CATEGORIES=	audio devel
REVISION =	1

HOMEPAGE=	http://www.surina.net/soundtouch/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m ${COMPILER_LIBCXX}

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

WRKDIST=	${WRKDIR}/soundtouch

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-x86-optimizations

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
