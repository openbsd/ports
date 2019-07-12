# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:31 sthen Exp $

COMMENT =		basic Apple Lossless Audio Codec decoder

DISTNAME =		alac_decoder-0.2.0

CATEGORIES =		audio

HOMEPAGE =		http://crazney.net/programs/itunes/alac.html

# MIT
PERMIT_PACKAGE =		Yes

WANTLIB +=		c

MASTER_SITES =		http://crazney.net/programs/itunes/files/
EXTRACT_SUFX =		.tgz

NO_TEST =		Yes

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS} -Wall"

WRKDIST =		${WRKDIR}/alac_decoder

ALL_TARGET =		alac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/alac ${PREFIX}/bin/

.include <bsd.port.mk>
