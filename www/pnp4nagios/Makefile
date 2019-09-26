# $OpenBSD: Makefile,v 1.14 2019/09/26 21:59:31 sthen Exp $

COMMENT-main =	Nagios/Icinga addon which graphs performance data
COMMENT-cgi =	pnp4nagios CGI scripts

V = 		0.6.26
DISTNAME =	pnp4nagios-${V}
PKGNAME-main =	${DISTNAME}
PKGNAME-cgi =	pnp4nagios-cgi-${V}
REVISION-main = 2
REVISION-cgi =	2

CATEGORIES =	www

HOMEPAGE =	https://docs.pnp4nagios.org/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB-main =		c pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pnp4nagios/}

MODULES =		lang/php
BUILD_DEPENDS =		net/rrdtool
RUN_DEPENDS-main =	net/rrdtool
RUN_DEPENDS-cgi =	lang/php/${MODPHP_VERSION},-gd \
			www/pnp4nagios,-main

FAKE_FLAGS =		INSTALL_OPTS="-o root -g bin" \
			SYSCONFDIR=${PREFIX}/share/examples/pnp4nagios

SYSCONFDIR = 		${BASESYSCONFDIR}/pnp4nagios
LOCALSTATEDIR = 	${BASELOCALSTATEDIR}/pnp4nagios

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-nagios-user=_icinga --with-nagios-group=_icinga \
			--datarootdir=${VARBASE}/www/pnp4nagios/ \
			--libexecdir=${PREFIX}/libexec/nagios \
			--with-perfdata-dir=${VARBASE}/www/pnp4nagios/rrd \
			--with-perfdata-spool-dir=${VARBASE}/spool/icinga \
			--with-perfdata-logfile=${VARBASE}/log/pnp4nagios/pnp4nagios.log

MULTI_PACKAGES = 	-main -cgi
PREFIX-cgi = 		${VARBASE}/www

NO_TEST =		Yes

PKG_ARCH-cgi =		*

INSTALL_TARGET = 	install install-config

SUBST_VARS += 		VARBASE

# fix broken symlink in tarbal
post-extract:
	ln -sf ${WRKSRC}/share/pnp/documents/en_US/dwnld.html \
		${WRKSRC}/share/pnp/documents/de_DE/dwnld.html
post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${VARBASE}/www/conf/modules.sample/
	${INSTALL_DATA} ${WRKSRC}/sample-config/httpd.conf \
		${WRKINST}/${VARBASE}/www/conf/modules.sample/pnp4nagios.conf.dist
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/verify_pnp_config_v2.pl \
		${PREFIX}/libexec/nagios/verify_pnp_config.pl

.include <bsd.port.mk>
