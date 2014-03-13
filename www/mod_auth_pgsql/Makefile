# $OpenBSD: Makefile,v 1.11 2014/03/13 17:33:27 sthen Exp $

COMMENT =	Apache PostgreSQL authentication module

REVISION=	6
DISTNAME =	mod_auth_pgsql-0.9.12
CATEGORIES =	www

HOMEPAGE =	http://www.giuseppetanzilli.it/mod_auth_pgsql
MASTER_SITES =	${HOMEPAGE}/dist/
MODULES =	apache-module

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pq>=5

MODAPACHE_NAME =	auth_pgsql

LIB_DEPENDS =		databases/postgresql

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pgsql-lib=${LOCALBASE}/lib \
			--with-pgsql-include=${LOCALBASE}/include/postgresql \
			--with-apxs=${MODAPACHE_APXS}

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_pgsql
	${INSTALL_DATA} ${WRKSRC}/mod_auth_pgsql.html \
		${PREFIX}/share/doc/mod_auth_pgsql
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
