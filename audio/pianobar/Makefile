# $OpenBSD: Makefile,v 1.29 2012/03/20 14:27:45 dcoppa Exp $

COMMENT =	console client for pandora

DISTNAME =	pianobar-2012.03.17
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/projects/pianobar/
MASTER_SITES =	http://spacehopper.org/mirrors/

SHARED_ONLY =	Yes

SHARED_LIBS =	piano	0.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ao c faad gmp gnutls hogweed iconv intl \
		m mad nettle p11-kit pthread tasn1 z

LIB_DEPENDS =	audio/faad \
		audio/libao \
		audio/libmad \
		security/gnutls>=2.10.0

CFLAGS +=	-I${LOCALBASE}/include

.if !defined(DEBUG)
CFLAGS +=	-DNDEBUG
.endif

MAKE_FLAGS =	DYNLINK=1 \
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
