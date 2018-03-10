# $OpenBSD: Makefile,v 1.6 2018/03/10 23:00:33 fcambus Exp $

COMMENT =	web application framework for writing scalable web APIs in C

V =		2.0.0-release
DISTNAME =	kore-${V}
PKGNAME =	${DISTNAME:S/-release//}
REVISION =	1

CATEGORIES =	www

HOMEPAGE =	https://kore.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto pthread ssl

MASTER_SITES =	https://github.com/jorisvink/kore/releases/download/$V/

FLAVORS =	debug pgsql
FLAVOR ?=

.if ${FLAVOR} == "debug"
MAKE_ENV +=	DEBUG=1
.endif

.if ${FLAVOR} == "pgsql"
MAKE_ENV +=	PGSQL=1
WANTLIB +=	pq
LIB_DEPENDS +=	databases/postgresql,-main
.endif

WRKDIST =	${WRKDIR}/kore

USE_GMAKE =	Yes

MAKE_ENV +=	CC="${CC}" TASKS=1

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kore
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/kore
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kore
	${INSTALL_DATA} ${WRKSRC}/conf/kore.conf.example ${PREFIX}/share/examples/kore

.include <bsd.port.mk>
