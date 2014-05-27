# $OpenBSD: Makefile,v 1.18 2014/05/27 21:22:29 naddy Exp $

# strictly speaking not, as they are just sound files, but packaging
# these on arch which don't build asterisk is a waste of cycles on build
# machines and disk space on mirrors
BUILD_DEPENDS =	telephony/asterisk

COMMENT =		add OpenBSD songs to Asterisk music-on-hold

PKGNAME =		asterisk-openbsd-moh-5.5
REL_LIST =		30 31 32 33 34 35 36 37 38 39 \
			40 41 42 43 44 45 46 47 48 49 \
			50 51 52 53 54 55
.for release in ${REL_LIST}
DISTFILES += song${release}.mp3
.endfor

PKG_ARCH =		*
EXTRACT_ONLY=

CATEGORIES =		telephony

HOMEPAGE =		http://www.openbsd.org/lyrics.html

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Copyright held by Theo; ok for non-commercial-redistribution
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ftp.openbsd.org/pub/OpenBSD/songs/

BUILD_DEPENDS =		audio/madplay

DIST_SUBDIR =		openbsd_songs

NO_TEST =		Yes

MOH =			${PREFIX}/share/asterisk/moh

do-build:
.for release in ${REL_LIST}
	${PREFIX}/bin/madplay -a -1.5 -Q -z -o raw:- --mono -R 8000 -a -12 \
		${FULLDISTDIR}/song${release}.mp3 > ${WRKDIR}/song${release}.sln
.endfor 

do-install:
	${INSTALL_DATA_DIR} ${MOH}
	${INSTALL_DATA} ${WRKDIR}/song*.sln ${MOH}

.include <bsd.port.mk>
