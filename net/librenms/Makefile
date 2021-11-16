# $OpenBSD: Makefile,v 1.140 2021/11/16 21:30:22 sthen Exp $

COMMENT=	auto-discovering network management/monitoring system

# changelogs at https://github.com/librenms/librenms/releases
GH_ACCOUNT=	librenms
GH_PROJECT=	librenms
GH_TAGNAME=	21.11.0

DISTFILES=	${GH_DISTFILE} \
		${PKGNAME}-vendor.tar.xz:0
EPOCH=		0

CATEGORIES=	net www

HOMEPAGE=	https://www.librenms.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES0=	https://spacehopper.org/mirrors/

MODULES=	lang/php \
		lang/python
MODPY_BUILDDEP= No

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-snmp \
		databases/py-pymysql${MODPY_FLAVOR} \
		databases/py-redis${MODPY_FLAVOR} \
		sysutils/py-dotenv${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}>=5.6.0 \
		net/fping \
		net/mtr \
		net/net-snmp \
		net/nmap \
		net/rrdtool \
		shells/bash \
		sysutils/ipmitool

NO_BUILD=	Yes
NO_TEST=	Yes

PREFIX=		/var/www
INSTDIR=	${PREFIX}/librenms
SUBST_VARS=	INSTDIR MODPHP_BIN
UPDATE_PLIST_ARGS += -i MODPHP_VERSION

R =	s,^\#!( )?(/usr/bin/env |/bin/)bash,\#!${LOCALBASE}/bin/bash,;
R +=	s,^\#!( )?/usr/bin/(env )?python.*,\#!${MODPY_BIN},;
R +=	s,/opt/librenms,/var/www/librenms,g;
R +=	s,/var/www/librenms,${TRUEPREFIX}/librenms,g;
R +=	s,/usr/local,${LOCALBASE},g

post-extract:
	mv ${WRKDIR}/vendor ${WRKSRC}/
	perl -pi \
	    -e 's,"/usr/bin/snmp,"/usr/local/bin/snmp,;' \
	    -e 's,"/bin/ping,"/sbin/ping,;' \
	    -e 's,"/usr/bin/(mtr|nmap|nfdump|ipmitool|virsh|dot|sfdp),"/usr/local/bin/\1,;' \
	    -e 's,"/usr/lib/nagios/plugins,"/usr/local/libexec/nagios/plugins,;' \
	    ${WRKSRC}/misc/config_definitions.json
	find ${WRKSRC} -type f -exec perl -pi -e '$R' {} +
	sed -i \
	    -e 's, librenms *, _librenms ,' \
	    -e 's,/var/www/librenms/cronic,-n,' \
	    ${WRKSRC}/librenms.nonroot.cron

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR} \
	    ${WRKINST}/${LOCALBASE}/share/bash-completion/completions/
	cd ${WRKSRC}; pax -rw . ${INSTDIR}
	find ${INSTDIR} -name '*.orig' -delete
	mkdir -p ${INSTDIR}/{rrd,logs}
	sed -i 's,%LNMS_VERSION%,${DISTNAME:S/librenms-//},' ${INSTDIR}/includes/common.php
	cp /usr/share/snmp/mibs/OPENBSD-* ${INSTDIR}/mibs/
	rm -rf ${INSTDIR}/tests
	find ${INSTDIR} -name '.git*' -exec rm -rf {} +
	ln -s /var/www/librenms/lnms ${WRKINST}/${LOCALBASE}/bin/
	${INSTALL_DATA} ${WRKSRC}/misc/lnms-completion.bash \
	    ${WRKINST}/${LOCALBASE}/share/bash-completion/completions/

# maintainer convenience target
dist: ${FULLDISTDIR}/${GH_DISTFILE}
	t=`mktemp -d /tmp/librenms.XXXXXXXXXX`; \
	f=$$t/${DISTNAME}-vendor.tar.xz; \
	cd $$t; \
	tar xzf ${FULLDISTDIR}/${GH_DISTFILE:C,\{.*,,}; \
	cd ${WRKDIST:C,^.*/,,}; \
	sed -i 's,whereis -b ,whereis ,' LibreNMS/Config.php; \
	composer install --no-dev; \
	echo tarring; tar cf - vendor | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/; \
	cd -; rm -rf $$t

.include <bsd.port.mk>
