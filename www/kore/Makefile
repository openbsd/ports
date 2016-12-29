# $OpenBSD: Makefile,v 1.2 2016/12/29 14:15:15 jca Exp $

COMMENT =	web application framework for writing scalable web APIs in C

GH_ACCOUNT =	jorisvink
GH_PROJECT =	kore
GH_TAGNAME =	2.0.0-release

PKGNAME =	${DISTNAME:S/-release//}

CATEGORIES =	www

HOMEPAGE =	https://kore.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto pthread ssl

MODULES =	gcc4
# for __sync_bool_compare_and_swap
MODGCC4_ARCHS=	arm

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

MAKE_ENV +=	TASKS=1

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kore
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/kore
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kore
	${INSTALL_DATA} ${WRKSRC}/conf/kore.conf.example ${PREFIX}/share/examples/kore

.include <bsd.port.mk>
