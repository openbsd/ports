# $OpenBSD: Makefile,v 1.1.1.1 2012/02/28 11:16:18 bentley Exp $

COMMENT =		basic Apple Lossless Audio Codec decoder

DISTNAME =		alac_decoder-0.2.0

CATEGORIES =		audio

HOMEPAGE =		http://crazney.net/programs/itunes/alac.html

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=		c

MASTER_SITES =		http://crazney.net/programs/itunes/files/
EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS} -Wall"

WRKDIST =		${WRKDIR}/alac_decoder

ALL_TARGET =		alac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/alac ${PREFIX}/bin/

.include <bsd.port.mk>
