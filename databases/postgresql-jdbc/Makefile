# $OpenBSD: Makefile,v 1.7 2009/04/26 09:38:25 sthen Exp $

COMMENT-main=		JDBC Driver for PostgreSQL
COMMENT-docs=		API docs for PostgreSQL JDBC Driver

V=			8.2-505
DISTNAME=		postgresql-jdbc-$V
PKGNAME-main=		postgresql-jdbc-${V:S/-/./}p2
PKGNAME-docs=		postgresql-jdbc-docs-${V:S/-/./}
PKG_ARCH-docs=		*
CATEGORIES=		databases java

MULTI_PACKAGES=		-main -docs

HOMEPAGE=		http://jdbc.postgresql.org/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/
EXTRACT_SUFX=		.src.tar.gz

MODULES=		java
MODJAVA_VER?=		1.5+
MODJAVA_JRERUN=		yes

BUILD_DEPENDS=		::devel/apache-ant
REGRESS_DEPENDS=	::databases/postgresql \
			:junit-3.8.2:java/junit
RUN_DEPENDS-docs=

JUNIT_JAR=		${LOCALBASE}/share/java/classes/junit-3.8.2/junit.jar

WRKDIST=		${WRKDIR}/${DISTNAME}.src

do-build:
	cd ${WRKDIST} && JAVA_HOME=${JAVA_HOME} ant all publicapi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/postgresql/java
	${INSTALL_DATA} ${WRKDIST}/jars/postgresql.jar \
		${PREFIX}/share/postgresql/java
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql-jdbc
	pax -rw -s@^${WRKDIST}/build/publicapi@@ \
		${WRKDIST}/build/publicapi \
		${PREFIX}/share/doc/postgresql-jdbc

# Setup temporary path for regression tests.
PG=			PGDATA=${WRKDIR}/pghome

pre-regress:
	@if pgrep -f ${LOCALBASE}/bin/postgres > /dev/null; then	\
		echo postgresql already running. Please shut it down;	\
		echo before running the regression tests.;		\
		false;							\
	fi
	@if [ $$(/sbin/sysctl -n kern.seminfo.semmni) -lt 256 -o	\
	      $$(/sbin/sysctl -n kern.seminfo.semmns) -lt 2048 ]; then	\
		echo For the regression tests, you need at least;	\
		echo /sbin/sysctl kern.seminfo.semmni=256;		\
		echo /sbin/sysctl kern.seminfo.semmns=2048;		\
		false;							\
	fi
	${PG} ${LOCALBASE}/bin/initdb -A trust
	${PG} ${LOCALBASE}/bin/pg_ctl -w start
	${PG} ${LOCALBASE}/bin/createlang plpgsql template1
	${PG} ${LOCALBASE}/bin/createuser -SDRli test
	${PG} ${LOCALBASE}/bin/createdb -O test test

do-regress:
	cd ${WRKDIST} && \
	${PG} JAVA_HOME=${JAVA_HOME} CLASSPATH="${JUNIT_JAR}" ant test

post-regress:
	${PG} ${LOCALBASE}/bin/pg_ctl stop -m fast

.include <bsd.port.mk>
