# $OpenBSD: Makefile,v 1.3 2011/03/31 10:25:25 sthen Exp $

COMMENT-main =		network monitoring system (improved fork of Nagios)
COMMENT-cgi =		cgi scripts for Icinga (classic Nagios-style UI)
COMMENT-ido =		sotre Icinga configuration and events in a database
COMMENT-api =		database-backed API for icinga

DISTNAME =		icinga-$V
PKGNAME-main =		icinga-$V
PKGNAME-cgi =		icinga-cgi-$V
PKGNAME-ido =		icinga-idoutils-$V
PKGNAME-api =		icinga-api-$V

MULTI_PACKAGES =	-main -cgi -api -ido
PREFIX-cgi =		/var/www
PREFIX-api =		/var/www

WANTLIB =		c crypto m pthread ssl
RUN_DEPENDS =		${BASE_PKGPATH},-main

WANTLIB-main =		${WANTLIB} ltdl>=4 perl util
RUN_DEPENDS-main =	net/nagios/plugins
LIB_DEPENDS-main =	devel/libtool,-ltdl

WANTLIB-ido =		${WANTLIB} dbi
LIB_DEPENDS-ido =	databases/libdbi
RUN_DEPENDS-ido =	${RUN_DEPENDS} \
			libdbi-drivers-mysql-*|libdbi-drivers-pgsql-*:databases/libdbi-drivers,-pgsql

WANTLIB-api =		# empty
RUN_DEPENDS-api =	www/php5/core

# the cgi binaries are linked -static to simplify use in chroot,
# but listed as dependency anyway to help pkg_add -u find updates.
# these will show as "extra".
WANTLIB-cgi =		c m gd jpeg png z
LIB_DEPENDS-cgi =	graphics/gd

FAKE_FLAGS =		CFGDIR=${TRUEPREFIX}/share/examples/icinga

CONFIGURE_STYLE =	gnu
CONFIGURE_STYLE +=	old # don't override sysconfdir
CONFIGURE_ARGS += \
	--sysconfdir=${SYSCONFDIR}/icinga \
	--datarootdir=/var/www/icinga-cgi \
	--libexecdir=${PREFIX}/libexec/nagios \
	--localstatedir=/var/icinga \
	--sbindir=/var/www/cgi-bin/icinga \
	--with-command-group=www \
	--with-cgiurl=/cgi-bin/icinga \
	--with-checkresult-dir=/var/spool/icinga \
	--with-htmurl=/icinga \
	--with-httpd-conf=/var/www/conf/modules.sample \
	--with-icinga-group=_icinga \
	--with-icinga-user=_icinga \
	--with-lockfile=/var/run/icinga/icinga.pid \
	--enable-embedded-perl \
	--enable-idoutils \
	--enable-ssl

CFLAGS +=	-fPIC \
		-I${LOCALBASE}/include \
		-L${X11BASE}/lib -L${LOCALBASE}/lib

CFGDIR =	${SYSCONFDIR}/icinga
MAKE_FLAGS =	CFGDIR=${CFGDIR} SYSCONFDIR=${CFGDIR}
INSTALL_TARGET = install-unstripped install-idoutils \
		install-config install-webconf install-api

# perl tests work; C tests require --enable-libtap in configure and
# fixing up WRKSRC/tap/configure
REGRESS_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-cgi}/conf/modules.sample
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/examples/icinga/db/{mysql,pgsql,queries,scripts}
	cd ${WRKINST}${PREFIX-cgi}; \
	mv ${WRKINST}${PREFIX-cgi}/icinga-cgi/icinga-api .; \
	mv conf/modules.sample/icinga.conf \
	    conf/modules.sample/icinga-cgi.conf.dist; \
	chown -R ${SHAREOWN}:${SHAREGRP} icinga-api icinga-cgi conf
	cd ${WRKSRC}/module/idoutils/db; \
	${INSTALL_DATA} README ${PREFIX}/share/examples/icinga/db
.for i in mysql pgsql queries
	${INSTALL_DATA} ${WRKSRC}/module/idoutils/db/$i/* \
	    ${PREFIX}/share/examples/icinga/db/$i
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/module/idoutils/db/scripts/* \
	    ${PREFIX}/share/examples/icinga/db/scripts; \

.include <bsd.port.mk>
