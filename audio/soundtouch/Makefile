# $OpenBSD: Makefile,v 1.26 2019/07/12 20:43:41 sthen Exp $

COMMENT=	tempo/pitch audio processing library

V=		2.1.2
DISTNAME=	soundtouch-${V}
SHARED_LIBS=	SoundTouch	4.0
CATEGORIES=	audio devel

HOMEPAGE=	https://www.surina.net/soundtouch/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://gitlab.com/soundtouch/soundtouch/-/archive/${V}/

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.16

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--disable-x86-optimizations
AUTORECONF=	./bootstrap

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS}"

post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' \
	    source/SoundStretch/Makefile.am source/SoundTouch/Makefile.am


.include <bsd.port.mk>
