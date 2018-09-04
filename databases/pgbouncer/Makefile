# $OpenBSD: Makefile,v 1.27 2018/09/04 12:46:10 espie Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

V = 		1.8.1
DISTNAME = 	pgbouncer-${V}
REVISION =      0

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB = 	c event crypto ssl

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
