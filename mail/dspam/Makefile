# $OpenBSD: Makefile,v 1.3 2005/02/13 17:55:48 alek Exp $

COMMENT=	"anti-spam filter"

VERSION=	3.2.6
DISTNAME=	dspam-${VERSION}
CATEGORIES=	mail

MASTER_SITES=	http://dspam.nuclearelephant.com/sources/

HOMEPAGE=	http://dspam.nuclearelephant.com/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent

CONFIGURE_ARGS+=	--with-dspam-home=/var/dspam \
			--with-dspam-home-owner=_dspam \
			--with-dspam-home-group=_dspam \
			--with-dspam-home-mode=0755 \
			--with-dspam-owner=root \
			--with-dspam-group=bin \
			--with-dspam-mode=0555 \
			--enable-long-usernames

DOCS=		${WRKSRC}/README ${WRKSRC}/README.*
EXAMPLESDIR=	${PREFIX}/share/examples/dspam
DRIVER=

FLAVORS=	sqlite mysql pgsql
FLAVOR?=	sqlite

.if ${FLAVOR:L:Msqlite}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite
.endif
CONFIGURE_ARGS+=	--with-storage-driver=sqlite_drv \
			--with-sqlite-includes=${LOCALBASE}/include \
			--with-sqlite-libraries=${LOCALBASE}/lib
LIB_DEPENDS=		sqlite.8.6::databases/sqlite
DRIVER=			sqlite
.endif

.if ${FLAVOR:L:Mmysql}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite
.endif
CONFIGURE_ARGS+=	--with-storage-driver=mysql_drv \
			--with-mysql-includes=${LOCALBASE}/include/mysql \
			--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--enable-virtual-users
LIB_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql
DRIVER=			mysql
WANTLIB+=		z ssl crypto
.endif

.if ${FLAVOR:L:Mpgsql}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite
.endif
CONFIGURE_ARGS+=	--with-storage-driver=pgsql_drv \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql \
			--with-pgsql-libraries=${LOCALBASE}/lib \
			--enable-virtual-users
LIB_DEPENDS+=		pq.3:postgresql-client-*:databases/postgresql
DRIVER=			pgsql
.endif

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKBUILD}/dspam.conf ${PREFIX}/share/examples/dspam/dspam.conf
	${INSTALL_DATA} ${WRKSRC}/tools.${DRIVER}_drv/README ${EXAMPLESDIR}/README.${DRIVER}
	${INSTALL_DATA} ${WRKSRC}/tools.${DRIVER}_drv/*.sql ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dspam
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dspam

.include <bsd.port.mk>
