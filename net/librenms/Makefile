COMMENT=	auto-discovering network management/monitoring system

# changelogs at https://github.com/librenms/librenms/releases
GH_ACCOUNT=	librenms
GH_PROJECT=	librenms
GH_TAGNAME=	24.8.1

DISTFILES.dep=	librenms-${GH_TAGNAME:R}-vendor.tar.xz
EPOCH=		0

CATEGORIES=	net www

HOMEPAGE=	https://www.librenms.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES.dep=	https://spacehopper.org/mirrors/

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
		sysutils/py-command_runner${MODPY_FLAVOR} \
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
SUBST_VARS=	INSTDIR
UPDATE_PLIST_ARGS += -i MODPHP_VERSION

R =	s,^\#!( )?(/usr/bin/env |/bin/)bash,\#!${LOCALBASE}/bin/bash,;
R +=	s,^\#!( )?/usr/bin/(env )?php.*,\#!${MODPHP_BIN},;
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
	    -e 's, php *, ${MODPHP_BIN} ,' \
	    -e 's,/var/www/librenms/cronic,-n,' \
	    ${WRKSRC}/dist/librenms.cron

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} daily.sh \
	    LibreNMS/__init__.py \
	    LibreNMS/wrapper.py \
	    LibreNMS/Validations/Php.php \
	    LibreNMS/Exceptions/UnserializableRouteCache.php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR} \
	    ${WRKINST}/${LOCALBASE}/share/bash-completion/completions \
	    ${WRKINST}/${LOCALBASE}/share/doc
	cd ${WRKSRC}; pax -rw . ${INSTDIR}
	find ${INSTDIR} -name '*${PATCHORIG}' -delete
	mkdir -p ${INSTDIR}/{rrd,logs}
	sed -i 's,%LNMS_VERSION%,${DISTNAME:S/librenms-//},' ${INSTDIR}/includes/common.php
	cp /usr/share/snmp/mibs/OPENBSD-* ${INSTDIR}/mibs/
	rm -rf ${INSTDIR}/tests \
	    ${INSTDIR}/vendor/tecnickcom/tcpdf/examples \
	    ${INSTDIR}/vendor/easybook/geshi/docs
	mv ${INSTDIR}/doc ${WRKINST}/${LOCALBASE}/share/doc/librenms
	find ${INSTDIR} -type f -and \( -name '.git*' -or -name '*.beforesubst' \) -delete
	find ${INSTDIR} -type d -and -name '.github' -exec rm -rf {} +
	ln -s /var/www/librenms/lnms ${WRKINST}/${LOCALBASE}/bin/
	${INSTALL_DATA} ${WRKSRC}/misc/lnms-completion.bash \
	    ${WRKINST}/${LOCALBASE}/share/bash-completion/completions/lnms

COMPOSER=	${MODPHP_BIN} \
		-d memory_limit=-1 -d allow_url_fopen=1 \
		-d suhosin.executor.include.whitelist=phar \
		/usr/local/libexec/composer.phar

# maintainer convenience target
dist: ${FULLDISTDIR}/${GH_DISTFILE}
	@set -x; t=`mktemp -d /tmp/librenms.XXXXXXXXXX`; \
		f=$$t/librenms-${GH_TAGNAME:R}-vendor.tar.xz; \
	cd $$t; \
	tar xzf ${FULLDISTDIR}/${GH_DISTFILE:C,\{.*,,}; \
	cd ${WRKDIST:C,^.*/,,}; \
	sed -i 's,whereis -b ,whereis ,' LibreNMS/Config.php; \
	${COMPOSER} install --no-dev; \
	echo tarring; tar cf - vendor | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/; \
	cd -; rm -rf $$t

.include <bsd.port.mk>
