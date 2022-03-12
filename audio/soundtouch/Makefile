COMMENT=	tempo/pitch audio processing library

V=		2.3.1
DISTNAME=	${V}
DIST_SUBDIR=	soundtouch
WRKDIST=	${WRKDIR}/soundtouch

PKGNAME=	soundtouch-${V}

SHARED_LIBS +=  SoundTouch           4.0      # 1.0

CATEGORIES=	audio devel

HOMEPAGE=	https://www.surina.net/soundtouch/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://codeberg.org/soundtouch/soundtouch/archive/

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

AUTOCONF_VERSION=2.71
AUTOMAKE_VERSION=1.16

CONFIGURE_STYLE=autoreconf
AUTORECONF=	./bootstrap

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS}"

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	--disable-x86-optimizations
.endif

.include <bsd.port.mk>
