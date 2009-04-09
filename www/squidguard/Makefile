# $OpenBSD: Makefile,v 1.5 2009/04/09 21:20:36 sthen Exp $

COMMENT =		filter, redirector and access controller for Squid

DISTNAME =		squidGuard-1.2.1
PKGNAME =		${DISTNAME}p1
CATEGORIES =		www

HOMEPAGE =		http://www.squidguard.org/

MAINTAINER =		Claudio Correa <correa@pucpcaldas.br>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c pthread

MASTER_SITES =		http://www.squidguard.org/Downloads/

SG_DIR =		/var/squidguard
CONFIG_DIR =		${SYSCONFDIR}/squidguard
CONFIG_FILE =		${CONFIG_DIR}/squidguard.conf
SUBST_VARS =		SG_DIR CONFIG_DIR CONFIG_FILE

LIB_DEPENDS =		lib/db4/db.>=4:db->=4,<5:databases/db/v4
RUN_DEPENDS =		::www/squid
BUILD_DEPENDS =		${RUN_DEPENDS}

CONFIGURE_ENV =		CFLAGS='${CFLAGS} -I${LOCALBASE}/include' \
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib' \
			ac_cv_path_LYNX=false

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--squiduser='_squid' \
			--localstatedir=${SG_DIR} \
			--sysconfdir=${CONFIG_DIR} \
			--with-sg-config=${CONFIG_FILE} \
			--with-sg-logdir=${SG_DIR} \
			--with-sg-dbhome=${SG_DIR}/db \
			--with-db-lib=${LOCALBASE}/lib/db4 \
			--with-db-inc=${LOCALBASE}/include/db4

FLAVORS =	ldap
FLAVOR ?=        

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS +=		ldap:openldap-client-*:databases/openldap
CONFIGURE_ARGS +=	--with-ldap=yes
.else
CONFIGURE_ARGS +=	--with-ldap=no
.endif

post-configure:
	@perl -pi -e "s,%%CONFIG_DIR%%,${CONFIG_DIR}," ${WRKSRC}/src/sg.h
	@perl -pi -e "s,%%SG_DIR%%,${SG_DIR}," ${WRKSRC}/src/sg.h

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/src/squidGuard ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/squidguard
	@rm ${WRKDIST}/doc/{Makefile,*.in}
	cp -R ${WRKDIST}/doc/* ${PREFIX}/share/doc/squidguard/

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/squidguard
	@rm ${WRKDIST}/samples/{Makefile,*.in,*.orig}
	cp -R ${WRKDIST}/samples/* ${PREFIX}/share/examples/squidguard/

.include <bsd.port.mk>
