# $OpenBSD: Makefile,v 1.64 2014/09/02 08:56:23 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	console client for pandora

DISTNAME =	pianobar-2014.06.08
REVISION =	0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/

MASTER_SITES =	${HOMEPAGE}

SHARED_LIBS =	piano	6.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	ao avcodec avfilter avformat avutil c gcrypt \
		gnutls json-c m pthread

LIB_DEPENDS =	audio/libao \
		devel/json-c \
		graphics/ffmpeg>=20140412 \
		security/gnutls>=2.10.0 \
		security/libgcrypt

.if !defined(DEBUG)
CFLAGS +=	-DNDEBUG
.endif

MAKE_FLAGS =	DYNLINK=1 \
		CC=${CC} \
		LIBGCRYPT_CFLAGS="-DGCRYPT_NO_DEPRECATED \
				  -I${LOCALBASE}/include" \
		LIBpiano_VERSION="${LIBpiano_VERSION}"

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

TEST_TARGET = 	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

pre-test:
	@touch ${WRKSRC}/src/libwaitress/waitress.c

.include <bsd.port.mk>
