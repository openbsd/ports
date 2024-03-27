COMMENT=	CalDAV and CardDAV interface for grommunio

V=		1.3
DISTNAME=	grommunio-dav-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-dav
GH_COMMIT=	8133bc4a8d1a15011bc3d5c8de9a7a4a66191c3a

REVISION=	3

DISTFILES=	${GH_DISTFILE}
DISTFILES.a = 	${GH_PROJECT}-${GH_COMMIT}-vendor.tar.gz

CATEGORIES=	mail www

SITES.a=	https://nerd.hu/distfiles/

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-pdo_sqlite \
		mail/grommunio/gromox,-mapi \
		mail/grommunio/mapi-header-php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/grommunio-dav

post-extract:
	mv ${WRKDIR}/vendor ${WRKSRC}/

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw .* * ${INSTDIR}
	mv ${INSTDIR}/config.php ${INSTDIR}/config.php.dist
	mv ${INSTDIR}/glogger.ini ${INSTDIR}/glogger.ini.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f -and -name '.git*' -delete
	find ${INSTDIR} -type d -and -name '.github' -exec rm -rf {} +

COMPOSER=	${MODPHP_BIN} \
		-d memory_limit=-1 -d allow_url_fopen=1 \
		-d suhosin.executor.include.whitelist=phar \
		/usr/local/libexec/composer.phar

# maintainer convenience target
dist: ${FULLDISTDIR}/${GH_DISTFILE}
	@set -x; t=`mktemp -d /tmp/grommunio-dav.XXXXXXXXXX`; \
	f=$$t/${GH_PROJECT}-${GH_COMMIT}-vendor.tar.gz; \
	cd $$t; \
	tar xzf ${FULLDISTDIR}/${GH_DISTFILE:C,\{.*,,}${EXTRACT_SUFX}; \
	cd ${WRKDIST:C,^.*/,,}; \
	patch -BEp0 < ${PATCHDIR}/patch-composer_json; \
	${COMPOSER} install --no-dev; \
	echo tarring; tar czf $$f vendor; \
	cp $$f /tmp; \
	cd -; rm -rf $$t

.include <bsd.port.mk>
