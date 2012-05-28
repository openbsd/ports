# $OpenBSD: Makefile,v 1.40 2012/05/28 09:47:00 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	console client for pandora

DISTNAME =	pianobar-2012.05.06
REVISION =	3
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/
MASTER_SITES =	${HOMEPAGE} \
		http://spacehopper.org/mirrors/

SHARED_LIBS =	piano	1.2	# 0.0.0

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
		LIBpiano_VERSION="${LIBpiano_VERSION}" \
		MANDIR="${PREFIX}/man"

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

USE_GMAKE =	Yes

REGRESS_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

pre-regress:
	@touch ${WRKSRC}/src/libwaitress/waitress.c

.include <bsd.port.mk>
