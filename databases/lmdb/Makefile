# $OpenBSD: Makefile,v 1.2 2018/11/16 21:00:15 jca Exp $

COMMENT =	Symas Lightning Memory-Mapped Database

VERSION =	0.9.22
REVISION =	0

GH_ACCOUNT =	LMDB
GH_PROJECT =	lmdb
GH_TAGNAME =	LMDB_${VERSION}

DISTNAME =	${GH_PROJECT}-${VERSION}

SHARED_LIBS +=  lmdb                      0.0 # 0.0

CATEGORIES =	databases

HOMEPAGE =	https://symas.com/lmdb/

MAINTAINER =	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# OpenLDAP Public License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" \
			SHARED_VERSION_MAJOR=${LIBlmdb_VERSION:R} \
			SHARED_VERSION_MINOR=${LIBlmdb_VERSION:E}

WRKDIST =		${WRKDIR}/lmdb-${GH_TAGNAME}/libraries/liblmdb

.include <bsd.port.mk>
