COMMENT =	Symas Lightning Memory-Mapped Database

VERSION =	0.9.29

DISTNAME =	openldap-LMDB_${VERSION}
PKGNAME =	lmdb-${VERSION}

SHARED_LIBS +=  lmdb                      0.0 # 0.0

CATEGORIES =	databases

HOMEPAGE =	https://symas.com/lmdb/

MAINTAINER =	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =		https://git.openldap.org/openldap/openldap/-/archive/LMDB_${VERSION}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" \
			SHARED_VERSION_MAJOR=${LIBlmdb_VERSION:R} \
			SHARED_VERSION_MINOR=${LIBlmdb_VERSION:E}

WRKDIST =		${WRKDIR}/openldap-LMDB_${VERSION}/libraries/liblmdb

.include <bsd.port.mk>
