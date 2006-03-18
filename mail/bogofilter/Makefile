# $OpenBSD: Makefile,v 1.4 2006/03/18 19:33:10 bernd Exp $

COMMENT=	"bayesian spam filter"

DISTNAME=	bogofilter-1.0.2
CATEGORIES=	mail

MAINTAINER=	Marc Espie <espie@openbsd.org>

HOMEPAGE=	http://www.bogofilter.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bogofilter/}

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m
MODULES=		converters/libiconv

FLAVORS=		db4 sqlite3 qdbm
FLAVOR?=

.if ${FLAVOR:L} == "db4"
DB_DIR=			db4
LIB_DEPENDS+=		lib/db4/db.=4:db-4.*:databases/db/v4
.elif ${FLAVOR:L} == "sqlite3"
DB_ENGINE=		sqlite3
LIB_DEPENDS+=		sqlite3.8::databases/sqlite3
.elif ${FLAVOR:L} == "qdbm"
DB_ENGINE=		qdbm
LIB_DEPENDS+=		qdbm.11::databases/qdbm
.else
DB_DIR=			db
LIB_DEPENDS+=		lib/db/db.=3:db-3.*:databases/db/v3
.endif

DB_ENGINE?=		db
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-included-gsl \
			--with-database=${DB_ENGINE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/${DB_DIR}" \
			LDFLAGS="-L${LOCALBASE}/lib/${DB_DIR}"

SAMPLEDIR=		${PREFIX}/share/examples/bogofilter
DOCDIR=			${PREFIX}/share/doc/bogofilter

post-install:
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	mv ${WRKINST}${SYSCONFDIR}/bogofilter.cf.example ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/README.* ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/integrating-* ${DOCDIR}

.include <bsd.port.mk>
