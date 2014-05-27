# $OpenBSD: Makefile,v 1.20 2014/05/27 12:32:19 pea Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

DISTNAME = 	pgbouncer-1.5.4

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB = 	c event

MASTER_SITES = 	http://pgfoundry.org/frs/download.php/3393/

BUILD_DEPENDS =	devel/libeventextra

CONFIGURE_STYLE = 	gnu
#Disable the detection of asciidoc since docs are already included
CONFIGURE_ENV =         ASCIIDOC=' '
CONFIGURE_ARGS = 	--with-libevent=${LOCALBASE}
MAKE_FLAGS+=		V=1

USE_GMAKE = 		Yes
USE_GROFF =		Yes

# The actual regress tests are (cd ${WRKSRC}/test; ./test.sh)
# They want to create full postgres install and also play with 
# firewall (iptables)
NO_TEST = 		Yes

.include <bsd.port.mk>
