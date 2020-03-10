# $OpenBSD: Makefile,v 1.100 2020/03/10 21:23:06 sthen Exp $

COMMENT-main =		obsolete version of Icinga network monitoring system
COMMENT-cgi =		Nagios-style web UI for obsolete Icinga version
COMMENT-ido =		store Icinga configuration and events in a database

GH_ACCOUNT =		Icinga
GH_PROJECT=		icinga-core
GH_TAGNAME =		v1.14.2
PKGNAME-main =		icinga-${GH_TAGNAME:S/v//}
PKGNAME-cgi =		icinga-cgi-${GH_TAGNAME:S/v//}
PKGNAME-ido =		icinga-idoutils-${GH_TAGNAME:S/v//}
REVISION =		4

WANTLIB =		c crypto m pthread ssl z

MULTI_PACKAGES =	-main -cgi -ido
PREFIX-cgi =		${VARBASE}/www
SUBST_VARS +=		PREFIX-cgi BASESYSCONFDIR

RUN_DEPENDS =		${BASE_PKGPATH},-main

WANTLIB-main =		${WANTLIB} ltdl>=4 perl
RUN_DEPENDS-main =	net/monitoring-plugins
LIB_DEPENDS-main =	devel/libtool,-ltdl

WANTLIB-ido =		${WANTLIB} dbi
LIB_DEPENDS-ido =	databases/libdbi
RUN_DEPENDS-ido =	${BASE_PKGPATH},-main \
			libdbi-drivers-mysql-*|libdbi-drivers-pgsql-*:databases/libdbi-drivers,-main

MODULES =		lang/php
USE_GMAKE =		Yes

# the cgi binaries are linked -static to simplify use in chroot,
# but listed as dependency anyway to help pkg_add -u find updates.
# these will show as "extra".
WANTLIB-cgi =		c m gd jpeg png z
LIB_DEPENDS-cgi =	graphics/gd
RUN_DEPENDS-cgi =

FAKE_FLAGS =		CFGDIR=${TRUEPREFIX}/share/examples/icinga

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/icinga
SYSCONFDIR =		${BASESYSCONFDIR}/icinga

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += \
	--datarootdir=${PREFIX-cgi}/icinga-cgi \
	--libexecdir=${PREFIX}/libexec/nagios \
	--sbindir=${PREFIX-cgi}/cgi-bin/icinga \
	--with-command-group=www \
	--with-cgiurl=/cgi-bin/icinga \
	--with-checkresult-dir=/var/spool/icinga \
	--with-htmurl=/icinga \
	--with-httpd-conf=${PREFIX-cgi}/conf/modules.sample \
	--with-httpd-conf-file=${PREFIX-cgi}/conf/modules.sample/icinga-cgi.conf.dist \
	--with-icinga-group=_icinga \
	--with-icinga-user=_icinga \
	--with-lockfile=/var/run/icinga/icinga.pid \
	--with-log-dir=/var/log/icinga \
	--with-p1-file-dir=${PREFIX}/bin \
	--enable-embedded-perl \
	--enable-ssl

CFLAGS +=	-Wformat -fPIC -I${LOCALBASE}/include \
		-L${X11BASE}/lib -L${LOCALBASE}/lib

INSTALL_TARGET = install install-idoutils install-config install-webconf

# perl tests work; C tests fail if embedded-perl is enabled
TEST_TARGET = test
TEST_DEPENDS =	devel/p5-IPC-Run3 \
		devel/p5-Test-Most \
		www/p5-HTML-Lint

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-cgi}/conf/modules.sample
	cd ${PREFIX}/share; ${INSTALL_DATA_DIR} \
	    examples/icinga/db/{mysql,pgsql,queries,scripts} \
	    examples/icinga/updates doc/icinga
	cd ${WRKSRC}; ${INSTALL_DATA} README LICENSE UPGRADING \
	    Changelog Changelog_json ${PREFIX}/share/doc/icinga/
	${INSTALL_DATA} ${WRKSRC}/sample-config/updates/* \
	    ${WRKSRC}/module/idoutils/config/updates/* \
	    ${PREFIX}/share/examples/icinga/updates/
	cd ${WRKINST}${PREFIX-cgi}; \
	    chown -R ${SHAREOWN}:${SHAREGRP} icinga-cgi conf
	cd ${WRKSRC}/module/idoutils; \
	    pax -rw db ${PREFIX}/share/examples/icinga/
	chmod ${SHAREMODE} ${PREFIX}/share/examples/icinga/resource.cfg

.include <bsd.port.mk>
