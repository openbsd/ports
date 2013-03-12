# $OpenBSD: Makefile,v 1.45 2013/03/12 16:22:59 ajacoutot Exp $

COMMENT=	SGI audiofile library clone

V=		0.3.6
SUBST_VARS=	V

DISTNAME=	audiofile-${V}
PKGNAME=	lib${DISTNAME}

SHARED_LIBS +=  audiofile            1.0      # 1.0

CATEGORIES=	devel audio

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.68k.org/~michael/audiofile/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC c m ogg stdc++

LIB_DEPENDS=	audio/flac

USE_LIBTOOL=	Yes

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_ASCIIDOC=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# audiofile-config is still needed by audio/normalize and devel/libspectrum
post-install:
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c ${FILESDIR}/audiofile-config \
		${PREFIX}/bin/audiofile-config
	chmod ${BINMODE} ${PREFIX}/bin/audiofile-config

.include <bsd.port.mk>
