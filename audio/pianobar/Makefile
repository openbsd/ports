# $OpenBSD: Makefile,v 1.71 2015/08/26 09:07:49 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	command-line client for Pandora Internet Radio

DISTNAME =	pianobar-2015.08.04
REVISION =	0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/

MASTER_SITES =	https://distfiles.bsdfrog.org/

SHARED_LIBS =	piano	8.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	ao avcodec avfilter avformat avutil c curl \
		gcrypt json-c m pthread

LIB_DEPENDS =	audio/libao \
		devel/json-c \
		graphics/ffmpeg>=20140412 \
		net/curl \
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

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

.include <bsd.port.mk>
