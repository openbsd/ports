# $OpenBSD: Makefile,v 1.2 2010/07/08 16:23:54 ajacoutot Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

DISTNAME = 	pgbouncer-1.3.3	
PKGNAME =	${DISTNAME}p0

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 	Yes
PERMIT_DISTFILES_CDROM =Yes

WANTLIB = 	c event

MASTER_SITES = 	http://pgfoundry.org/frs/download.php/2677/

BUILD_DEPENDS =	::devel/libeventextra

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS = 	--with-libevent=${LOCALBASE}

USE_GMAKE = 		Yes

# The actual regress tests are (cd ${WRKSRC}/test; ./test.sh)
# They want to create full postgres install and also play with 
# firewall (iptables)
NO_REGRESS = 		Yes

post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/pgbouncer/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/pgbouncer/README.OpenBSD

.include <bsd.port.mk>
