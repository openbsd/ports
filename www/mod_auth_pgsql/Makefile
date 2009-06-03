# $OpenBSD: Makefile,v 1.2 2009/06/03 00:48:51 pyr Exp $

COMMENT =	Apache PostgreSQL authentication module

DISTNAME =	mod_auth_pgsql-0.9.12
PKGNAME =	${DISTNAME}p0
CATEGORIES =	www

HOMEPAGE =	http://www.giuseppetanzilli.it/mod_auth_pgsql
MASTER_SITES =	${HOMEPAGE}/dist/
MODULES =	apache-module

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODAPACHE_NAME =	auth_pgsql

LIB_DEPENDS =		pq.>=5:postgresql-client-*:databases/postgresql

NO_REGRESS =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pgsql-lib=${LOCALBASE}/lib \
			--with-pgsql-include=${LOCALBASE}/include/postgresql

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_pgsql
	${INSTALL_DATA} ${WRKSRC}/mod_auth_pgsql.html \
		${PREFIX}/share/doc/mod_auth_pgsql
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
