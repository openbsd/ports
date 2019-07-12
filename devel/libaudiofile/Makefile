# $OpenBSD: Makefile,v 1.60 2019/07/12 08:54:14 ajacoutot Exp $

# -fvisibility
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	SGI audiofile library clone

V=		0.3.6
SUBST_VARS=	V

DISTNAME=	audiofile-${V}
PKGNAME=	lib${DISTNAME}
REVISION=	6

SHARED_LIBS +=  audiofile            1.0      # 1.0

CATEGORIES=	devel audio

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	https://www.68k.org/~michael/audiofile/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

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
