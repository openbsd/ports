# $OpenBSD: Makefile,v 1.24 2018/10/24 14:27:58 sthen Exp $

COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.9.2
SHARED_LIBS +=	SoundTouch	3.0      # .0.0
CATEGORIES=	audio devel
REVISION =	3

HOMEPAGE=	http://www.surina.net/soundtouch/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

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
		touch NEWS README AUTHORS ChangeLog && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		PATH=${PORTPATH} \
		./bootstrap

.include <bsd.port.mk>
