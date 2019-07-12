# $OpenBSD: Makefile,v 1.29 2019/07/12 21:15:34 sthen Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

V = 		1.9.0
DISTNAME = 	pgbouncer-${V}

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB = 	c event crypto ssl pthread

MASTER_SITES = 	https://pgbouncer.github.io/downloads/files/${V}/

BUILD_DEPENDS =	devel/libeventextra

CONFIGURE_STYLE = 	gnu
#Disable the detection of asciidoc since docs are already included
CONFIGURE_ENV =         ASCIIDOC=' '
CONFIGURE_ARGS = 	--with-libevent=${LOCALBASE} --without-cares
MAKE_FLAGS+=		V=1

USE_GMAKE = 		Yes

# The actual regress tests are (cd ${WRKSRC}/test; ./test.sh)
# They want to create full postgres install and also play with 
# firewall (iptables)
NO_TEST = 		Yes

.include <bsd.port.mk>
