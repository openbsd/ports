# $OpenBSD: Makefile,v 1.12 2015/09/17 12:17:45 sthen Exp $

COMMENT =	auto-discovering network management/monitoring system

V =		201509
DISTNAME =	librenms-$V
DISTFILES =	librenms-$V{$V}.tar.gz

CATEGORIES =	net www

HOMEPAGE =	http://www.librenms.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/librenms/librenms/archive/

MODULES =	lang/php \
		lang/python
MODPY_BUILDDEP = No

RUN_DEPENDS =	databases/py-mysql \
		lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-snmp \
		net/fping \
		net/mtr \
		net/net-snmp \
		net/nmap \
		net/pear-Net-IPv4 \
		net/pear-Net-IPv6 \
		net/rrdtool \
		sysutils/ipmitool

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/librenms
SUBST_VARS =	INSTDIR

R =	s,^\#!( )?/bin/bash,\#!${LOCALBASE}/bin/bash,;
R +=	s,^\#!( )?/usr/bin/(env )?python,\#!${MODPY_BIN},;
R +=	s,^\#!( )?/usr/bin/(env )?php,\#!${MODPHP_BIN},;
R +=	s,/opt/librenms,/var/www/librenms,g;
R +=	s,/var/www/librenms,${TRUEPREFIX}/librenms,g;
R +=	s,/usr/local,${LOCALBASE},g

post-extract:
	find ${WRKSRC} -type f -print0 | xargs -r0 perl -pi -e '$R'

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC}; pax -rw . ${INSTDIR}
	find ${INSTDIR} -name '*.orig' -print0 | xargs -r0 rm
	mkdir -p ${INSTDIR}/{rrd,logs}
	cd ${INSTDIR}; perl -pi -e 's,%PHP%,${MODPHP_BIN},' \
	    daily.sh poller-wrapper.py validate.php

.include <bsd.port.mk>
