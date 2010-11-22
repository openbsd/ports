# $OpenBSD: Makefile,v 1.9 2010/11/22 08:36:54 espie Exp $

COMMENT =		filter, redirector and access controller for Squid

DISTNAME =		squidGuard-1.4
REVISION =		0
CATEGORIES =		www

HOMEPAGE =		http://www.squidguard.org/
MAINTAINER =		Claudio Correa <correa@pucpcaldas.br>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c lib/db4/db pthread

MASTER_SITES =		http://www.squidguard.org/Downloads/

SG_DIR =		/var/db/squidGuard
CONFIG_DIR =		${SYSCONFDIR}/squidguard
SUBST_VARS =		SG_DIR CONFIG_DIR

LIB_DEPENDS =		db->=4,<5:databases/db/v4
RUN_DEPENDS =		www/squid
BUILD_DEPENDS =		${RUN_DEPENDS}

CONFIGURE_ENV =		CFLAGS='${CFLAGS} -I${LOCALBASE}/include' \
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib' \
			ac_cv_path_LYNX=false

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-squiduser='_squid' \
			--localstatedir=${SG_DIR} \
			--with-sg-logdir=/var/log/squidguard \
			--with-sg-dbhome=${SG_DIR}/db \
			--with-sg-config=${CONFIG_DIR}/squidguard.conf \
			--with-db-lib=${LOCALBASE}/lib/db4 \
			--with-db-inc=${LOCALBASE}/include/db4

REGRESS_TARGET =	test

FLAVORS =	ldap mysql
FLAVOR ?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS +=		databases/openldap
WANTLIB +=		ldap
CONFIGURE_ARGS +=	--with-ldap=yes
.else
CONFIGURE_ARGS +=	--with-ldap=no
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS +=		databases/mysql
CONFIGURE_ARGS +=	--with-mysql=${LOCALBASE}
WANTLIB +=		mysqlclient z
.else
CONFIGURE_ARGS +=	--with-mysql=no
.endif

pre-configure:
	@perl -pi -e "s,\@prefix\@\/squidGuard/squidGuard.conf,\@cfgdir\@\/squidguard/squidguard.conf," ${WRKSRC}/src/sg.h.in
	@perl -pi -e "s,\@prefix\@\/squidGuard/log,\@logdir\@\/squidGuard," ${WRKSRC}/src/sg.h.in
	@perl -pi -e "s,\@prefix\@\/squidGuard/db,\@logdir\@\/squidGuard/db," ${WRKSRC}/src/sg.h.in

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/src/squidGuard ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/squidguard \
	    ${PREFIX}/share/doc/squidguard/html
	${INSTALL_DATA} ${WRKDIST}/doc/README ${WRKDIST}/doc/*.txt \
	    ${PREFIX}/share/doc/squidguard/
	${INSTALL_DATA} ${WRKDIST}/doc/*.gif ${WRKDIST}/doc/*.html \
	    ${PREFIX}/share/doc/squidguard/html/

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/squidguard
	@rm ${WRKDIST}/samples/{Makefile,*.in}
	cp -R ${WRKDIST}/samples/* ${PREFIX}/share/examples/squidguard/

.include <bsd.port.mk>
