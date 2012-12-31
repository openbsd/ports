# $OpenBSD: Makefile,v 1.51 2012/12/31 10:38:17 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	console client for pandora

DISTNAME =	pianobar-2012.12.01
REVISION =	0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/
MASTER_SITES =	${HOMEPAGE}

SHARED_LIBS =	piano	3.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ao c faad gcrypt gnutls json m mad pthread

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
		LIBGCRYPT_CFLAGS="-I${LOCALBASE}/include" \
		LIBpiano_VERSION="${LIBpiano_VERSION}"

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

REGRESS_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

pre-regress:
	@touch ${WRKSRC}/src/libwaitress/waitress.c

.include <bsd.port.mk>
