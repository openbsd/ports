# $OpenBSD: Makefile,v 1.22 2012/04/23 17:15:18 espie Exp $

COMMENT =	bayesian spam filter

DISTNAME =	bogofilter-1.1.6
REVISION =	5
CATEGORIES =	mail

MAINTAINER =	Marc Espie <espie@openbsd.org>

HOMEPAGE =	http://bogofilter.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bogofilter/}

# GPLv2/GPLv3
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c m
MODULES =		converters/libiconv
USE_GROFF =		Yes

FLAVORS =		db4 sqlite3 qdbm
FLAVOR ?=

.if ${FLAVOR} == "db4"
DB_DIR =		db4
LIB_DEPENDS +=		databases/db/v4
WANTLIB +=		lib/db4/db>=4
.elif ${FLAVOR} == "sqlite3"
DB_ENGINE =		sqlite3
WANTLIB +=		sqlite3>=8
.elif ${FLAVOR} == "qdbm"
DB_ENGINE =		qdbm
LIB_DEPENDS +=		databases/qdbm
WANTLIB +=		qdbm>=11
.else
BROKEN-hppa =		configure stuck on testing if BDB supports shared environments
DB_DIR =		db
LIB_DEPENDS +=		databases/db/v3
WANTLIB +=		lib/db/db=3
.endif

DB_ENGINE ?=		db
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-included-gsl \
			--with-database=${DB_ENGINE}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/${DB_DIR}" \
			LDFLAGS="-L${LOCALBASE}/lib/${DB_DIR}"

SAMPLEDIR =		${PREFIX}/share/examples/bogofilter
DOCDIR =		${PREFIX}/share/doc/bogofilter

post-install:
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	mv ${WRKINST}${SYSCONFDIR}/bogofilter.cf.example ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/README.* ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/integrating-* ${DOCDIR}

.include <bsd.port.mk>
