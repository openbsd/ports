# $OpenBSD: Makefile,v 1.80 2016/11/05 21:27:26 dcoppa Exp $

COMMENT =	command-line client for Pandora Internet Radio

DISTNAME =	pianobar-2016.06.02
REVISION =	2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	https://6xq.net/pianobar/

MASTER_SITES =	${HOMEPAGE}

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
		LIBpiano_VERSION="${LIBpiano_VERSION}" \
		V=1

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ui.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA_DIR} ${PREFIX}/share/pianobar
	${INSTALL_DATA} ${FILESDIR}/cert.pem \
		${PREFIX}/share/pianobar/cert.pem
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

.include <bsd.port.mk>
