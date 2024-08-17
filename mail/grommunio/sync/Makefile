COMMENT=	EAS (Exchange ActiveSync) interface for grommunio

V=		2.0
DISTNAME=	grommunio-sync-${V}
REVISION=	10

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-sync
GH_COMMIT=	de161794a22ff78489638f6549be001497e9de67

DISTFILES=	${GH_DISTFILE}
DISTFILES.a= 	${GH_PROJECT}-${GH_COMMIT}-vendor.tar.gz

CATEGORIES=	mail www

SITES.a=		https://nerd.hu/distfiles/

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

RUN_DEPENDS=	databases/pecl-redis,php${MODPHP_VERSION:S/.//} \
		lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-pdo_sqlite \
		mail/grommunio/gromox,-mapi \
		mail/grommunio/mapi-header-php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/grommunio-sync

post-extract:
	cd ${WRKDIR}/vendor && pax -rw * ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw .* * ${INSTDIR}
	mv ${INSTDIR}/config.php ${INSTDIR}/config.php.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f -and -name '.git*' -delete
	find ${INSTDIR} -type d -and -name '.github' -exec rm -rf {} +

COMPOSER=	${MODPHP_BIN} \
		-d memory_limit=-1 -d allow_url_fopen=1 \
		-d suhosin.executor.include.whitelist=phar \
		/usr/local/libexec/composer.phar

# maintainer convenience target
dist: ${FULLDISTDIR}/${GH_DISTFILE}
	@set -x; t=`mktemp -d /tmp/grommunio-sync.XXXXXXXXXX`; \
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
