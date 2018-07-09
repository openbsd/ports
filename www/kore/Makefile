# $OpenBSD: Makefile,v 1.7 2018/07/09 17:39:57 fcambus Exp $

COMMENT =	web application framework for writing scalable web APIs in C

DISTNAME =	kore-3.0.0

CATEGORIES =	www

HOMEPAGE =	https://kore.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto pthread ssl

MASTER_SITES =	https://kore.io/releases/

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

USE_GMAKE =	Yes

MAKE_ENV +=	CC="${CC}" TASKS=1

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kore
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/kore
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kore
	${INSTALL_DATA} ${WRKSRC}/conf/kore.conf.example ${PREFIX}/share/examples/kore

.include <bsd.port.mk>
