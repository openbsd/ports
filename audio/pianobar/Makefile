# $OpenBSD: Makefile,v 1.5 2010/09/14 15:10:12 dcoppa Exp $

COMMENT =	console client for pandora

DISTNAME =	pianobar-2010.08.21
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/html/00/17.html
MASTER_SITES =	http://6xq.net/media/00/16/

SHARED_ONLY =	Yes

SHARED_LIBS =	piano	0.0	# 0.0.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ao c faad m mad pthread

LIB_DEPENDS =	::audio/libao \
		::audio/faad \
		::audio/libmad

CFLAGS +=	-I${LOCALBASE}/include

MAKE_FLAGS =	LIBAO_INCLUDE="${LOCALBASE}/include/ao" \
		LIBAO_LIB="-L${LOCALBASE}/lib -lao" \
		LIBpiano_VERSION="${LIBpiano_VERSION}" \
		MANDIR="${PREFIX}/man"

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

USE_GMAKE =	Yes
NO_REGRESS =	Yes

ALL_TARGET =	pianobar libpiano
INSTALL_TARGET =install install-libpiano

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pianobar
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/pianobar
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

.include <bsd.port.mk>
