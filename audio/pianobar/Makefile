# $OpenBSD: Makefile,v 1.60 2014/03/27 09:28:06 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	console client for pandora

DISTNAME =	pianobar-2013.09.15
REVISION =	1
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/

MASTER_SITES =	${HOMEPAGE}

SHARED_LIBS =	piano	4.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	ao c faad gcrypt gnutls json-c m mad pthread

LIB_DEPENDS =	audio/faad>=2.7 \
		audio/libao \
		audio/libmad \
		devel/json-c \
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
