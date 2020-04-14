# $OpenBSD: Makefile,v 1.9 2020/04/14 09:06:42 chrisz Exp $

COMMENT =	Symas Lightning Memory-Mapped Database

VERSION =	0.9.24

GH_ACCOUNT =	LMDB
GH_PROJECT =	lmdb
GH_TAGNAME =	LMDB_${VERSION}

DISTNAME =	${GH_PROJECT}-${VERSION}

SHARED_LIBS +=  lmdb                      0.0 # 0.0

CATEGORIES =	databases

HOMEPAGE =	https://symas.com/lmdb/

MAINTAINER =	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" \
			SHARED_VERSION_MAJOR=${LIBlmdb_VERSION:R} \
			SHARED_VERSION_MINOR=${LIBlmdb_VERSION:E}

WRKDIST =		${WRKDIR}/lmdb-${GH_TAGNAME}/libraries/liblmdb

.include <bsd.port.mk>
