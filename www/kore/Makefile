# $OpenBSD: Makefile,v 1.17 2020/04/17 16:14:40 naddy Exp $

COMMENT =	web application framework for writing scalable web APIs in C

DISTNAME =	kore-3.3.1

CATEGORIES =	www

HOMEPAGE =	https://kore.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto pthread ssl

MASTER_SITES =	https://kore.io/releases/

FLAVORS =	curl debug pgsql python
FLAVOR ?=

.if ${FLAVOR} == "curl"
MAKE_ENV +=	CURL=1
WANTLIB +=	curl
LIB_DEPENDS +=	net/curl
.endif

.if ${FLAVOR} == "debug"
MAKE_ENV +=	DEBUG=1
.endif

.if ${FLAVOR} == "pgsql"
MAKE_ENV +=	PGSQL=1
WANTLIB +=	pq
LIB_DEPENDS +=	databases/postgresql,-main
.endif

.if ${FLAVOR} == "python"
CONFIGURE_STYLE = none
MODULES =	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MAKE_ENV +=	PYTHON=1
WANTLIB +=	${MODPY_WANTLIB} intl m util
LIB_DEPENDS +=	devel/gettext,-runtime
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
