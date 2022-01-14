# $OpenBSD: Makefile,v 1.62 2022/01/14 19:49:12 sthen Exp $

# -fvisibility
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	SGI audiofile library clone

V=		0.3.6
SUBST_VARS=	V

DISTNAME=	audiofile-${V}
PKGNAME=	lib${DISTNAME}
REVISION=	7

SHARED_LIBS +=  audiofile            1.0      # 1.0

CATEGORIES=	devel audio

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	https://audiofile.68k.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC c m ogg ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/flac


SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_ASCIIDOC=no

# audiofile-config is still needed by audio/normalize and devel/libspectrum
post-install:
	${SUBST_PROGRAM} ${FILESDIR}/audiofile-config \
		${PREFIX}/bin/audiofile-config

.include <bsd.port.mk>
