# $OpenBSD: Makefile,v 1.22 2015/09/11 12:39:27 pea Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

V = 		1.6.1
DISTNAME = 	pgbouncer-${V}

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB = 	c event

MASTER_SITES = 	https://pgbouncer.github.io/downloads/files/${V}/

BUILD_DEPENDS =	devel/libeventextra

CONFIGURE_STYLE = 	gnu
#Disable the detection of asciidoc since docs are already included
CONFIGURE_ENV =         ASCIIDOC=' '
CONFIGURE_ARGS = 	--with-libevent=${LOCALBASE} --without-cares
MAKE_FLAGS+=		V=1

USE_GMAKE = 		Yes
USE_GROFF =		Yes

# The actual regress tests are (cd ${WRKSRC}/test; ./test.sh)
# They want to create full postgres install and also play with 
# firewall (iptables)
NO_TEST = 		Yes

.include <bsd.port.mk>
