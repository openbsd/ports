# $OpenBSD: Makefile,v 1.49 2017/10/04 20:47:14 sthen Exp $

COMMENT =	auto-discovering network management/monitoring system

GH_ACCOUNT =	librenms
GH_PROJECT =	librenms
GH_TAGNAME =	1.32
EPOCH =		0

CATEGORIES =	net www

HOMEPAGE =	https://www.librenms.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

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
		net/rrdtool \
		shells/bash \
		sysutils/ipmitool

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/librenms
SUBST_VARS =	INSTDIR MODPHP_BIN

R =	s,^\#!( )?(/usr/bin/env |/bin/)bash,\#!${LOCALBASE}/bin/bash,;
R +=	s,^\#!( )?/usr/bin/(env )?python.*,\#!${MODPY_BIN},;
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
	cd ${INSTDIR}; sed -i 's,%PHP%,${MODPHP_BIN},' daily.sh poller-wrapper.py validate.php; \
	    sed -i 's,%LNMS_VERSION%,${DISTNAME:S/librenms-//},' includes/common.php
	cp /usr/share/snmp/mibs/OPENBSD-* ${INSTDIR}/mibs/
	rm -r ${INSTDIR}/tests

.include <bsd.port.mk>
