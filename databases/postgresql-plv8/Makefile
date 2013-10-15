# $OpenBSD: Makefile,v 1.4 2013/10/15 02:19:18 jeremy Exp $

# v8 only works on these arches currently
ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		PostgreSQL V8 javascript procedual language

VERSION =		1.3.0
DISTNAME =		plv8-${VERSION}
REVISION =		1
PKGNAME =		postgresql-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://code.google.com/p/plv8js

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++ v8 execinfo pthread

MASTER_SITES =		http://api.pgxn.org/dist/plv8/${VERSION}/
EXTRACT_SUFX =		.zip

BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		lang/libv8
RUN_DEPENDS =		postgresql-server->=9.3,<9.4:databases/postgresql,-server

MAKE_FLAGS =		V8DIR=${LOCALBASE}/lib
USE_GMAKE =		Yes

# Need to start the PostgreSQL server first
TEST_IS_INTERACTIVE=	Yes
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} PGUSER=postgres \
		gmake installcheck

.include <bsd.port.mk>
