# $OpenBSD: Makefile,v 1.16 2014/09/13 18:09:20 brad Exp $

SHARED_ONLY=		Yes

COMMENT=		C++ database API

DISTNAME=		deepfryed-dbicpp-v0.6.0
PKGNAME=		dbic++-0.6.0
REVISION=		6
CATEGORIES=		databases
HOMEPAGE=		https://github.com/deepfryed/dbicpp

SHARED_LIBS +=  dbdmysql                  2.0 # 1.0
SHARED_LIBS +=  dbdpg                     2.0 # 1.0
SHARED_LIBS +=  dbdsqlite3                1.0 # 1.0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

# port-lib-depends-check says that uuid and pcrecpp are
# Extra, but they are used in a .a file that doesn't have a
# .so shared library equivalent.
WANTLIB =		uuid m mysqlclient pcrecpp pq stdc++ sqlite3

MASTER_SITES=		https://distfiles.bsdfrog.org/

MODULES =		devel/cmake

LIB_DEPENDS=		databases/mariadb \
			databases/postgresql \
			devel/pcre \
			sysutils/e2fsprogs>=1.42.7

CONFIGURE_ARGS+=	-DCMAKE_MYSQL_VERSION=${LIBdbdmysql_VERSION} \
			-DCMAKE_PG_VERSION=${LIBdbdpg_VERSION} \
			-DCMAKE_SQLITE3_VERSION=${LIBdbdsqlite3_VERSION}

WRKDIST=		${WRKDIR}/deepfryed-dbicpp

NO_TEST=		Yes

post-extract:
	mv ${WRKDIR}/deepfryed-dbicpp-* ${WRKDIR}/deepfryed-dbicpp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{inc/dbic++.h,src/dbic++.cc,pkgconfig/dbic++.pc}

.include <bsd.port.mk>
