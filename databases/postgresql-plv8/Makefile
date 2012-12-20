# $OpenBSD: Makefile,v 1.1.1.1 2012/12/20 16:16:34 jeremy Exp $

# v8 only works on these arches currently
ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		PostgreSQL V8 javascript procedual language

VERSION =		1.3.0
DISTNAME =		plv8-${VERSION}
PKGNAME =		postgresql-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		http://code.google.com/p/plv8js

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++ v8 execinfo pthread

MASTER_SITES =		http://api.pgxn.org/dist/plv8/${VERSION}/
EXTRACT_SUFX =		.zip

BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		lang/libv8
RUN_DEPENDS =		postgresql-server->=9.2,<9.3:databases/postgresql,-server

MAKE_FLAGS =		V8DIR=${LOCALBASE}/lib
USE_GMAKE =		Yes

# Need to start the PostgreSQL server first
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} PGUSER=postgres \
		gmake installcheck

.include <bsd.port.mk>
