COMMENT =		filter, redirector and access controller for Squid

V =			1.6.0
DISTNAME =		squidguard_$V
PKGNAME =		squidGuard-$V
EXTRACT_SUFX =		.orig.tar.gz
WRKDIST =		${WRKDIR}/squidguard-$V
CATEGORIES =		www
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE =		http://www.squidguard.org/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB =		c lib/db4/db pthread

SITES =			${SITE_DEBIAN:=main/s/squidguard/}

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/db/squidGuard
CONFIG_DIR =		${SYSCONFDIR}/squidguard
SUBST_VARS =		CONFIG_DIR

LIB_DEPENDS =		databases/db/v4
RUN_DEPENDS =		www/squid
BUILD_DEPENDS =		${RUN_DEPENDS}

CONFIGURE_ENV =		CFLAGS='${CFLAGS} -I${LOCALBASE}/include' \
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib' \
			ac_cv_path_LYNX=false \
			YACC=/usr/bin/yacc
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		${WRKSRC}/autogen.sh
CONFIGURE_ARGS =	--with-squiduser='_squid' \
			--with-mysql=no \
			--with-sg-logdir=/var/log/squidguard \
			--with-sg-dbhome=${LOCALSTATEDIR}/db \
			--with-sg-config=${CONFIG_DIR}/squidguard.conf \
			--with-db-lib=${LOCALBASE}/lib/db4 \
			--with-db-inc=${LOCALBASE}/include/db4

TEST_TARGET =	test

FLAVORS =	ldap
FLAVOR ?=

.if ${FLAVOR:Mldap}
LIB_DEPENDS +=		databases/openldap
WANTLIB +=		ldap
CONFIGURE_ARGS +=	--with-ldap=yes
.else
CONFIGURE_ARGS +=	--with-ldap=no
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
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/squidguard/
	chmod -R og+rX ${PREFIX}/share/examples/squidguard/

.include <bsd.port.mk>
