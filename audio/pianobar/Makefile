# $OpenBSD: Makefile,v 1.35 2012/05/04 10:32:33 dcoppa Exp $

COMMENT =	console client for pandora

DISTNAME =	pianobar-2012.05.02
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/
MASTER_SITES =	http://spacehopper.org/mirrors/

SHARED_ONLY =	Yes

SHARED_LIBS =	piano	1.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ao c faad gcrypt gnutls json m mad pthread

LIB_DEPENDS =	audio/faad \
		audio/libao \
		audio/libmad \
		devel/json-c \
		security/gnutls>=2.10.0 \
		security/libgcrypt

CFLAGS +=	-I${LOCALBASE}/include

.if !defined(DEBUG)
CFLAGS +=	-DNDEBUG
.endif

MAKE_FLAGS =	DYNLINK=1 \
		CC=${CC} \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBpiano_VERSION="${LIBpiano_VERSION}" \
		MANDIR="${PREFIX}/man"

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

USE_GMAKE =	Yes

NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

.include <bsd.port.mk>
