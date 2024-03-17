COMMENT=	user and admin portal for Let's Connect/eduVPN

V=		3.5.7
DISTNAME=	vpn-user-portal-$V
SITES.sh=	https://spacehopper.org/mirrors/
# to update: comment out DISTFILES.sh, update V, make makesum, make dist
DISTFILES.sh=	${DISTNAME}-vendor.tar.xz
# Debian packaging in https://git.sr.ht/~fkooman/vpn-user-portal.deb/tree

# AGPL-3.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/php
BUILD_DEPENDS=	www/composer
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gmp \
		lang/php/${MODPHP_VERSION},-intl \
		lang/php/${MODPHP_VERSION},-pdo_sqlite \
		net/eduvpn/vpn-ca \
		net/eduvpn/vpn-portal-artwork-eduvpn \
		net/eduvpn/vpn-portal-artwork-lc
RUN_DEPENDS+=	graphics/libqrencode

PHPFPM=		php${MODPHP_VERSION:S/.//}_fpm
SUBST_VARS+=	PHPFPM

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
PREFIX=		/var/www
LPREFIX=	${WRKINST}/usr/local

post-extract:
	mv ${WRKDIR}/vendor ${WRKSRC}/

do-install:
	${INSTALL_DATA_DIR} \
	    ${LPREFIX}/share/{doc,examples}/vpn-user-portal \
	    ${PREFIX}/vpn-user-portal

	${INSTALL_DATA} ${WRKSRC}/{LICENSE,*.md} \
	    ${LPREFIX}/share/doc/vpn-user-portal/

	${INSTALL_DATA} ${WRKSRC}/config/config.php.example \
	    ${FILESDIR}/localhost.conf \
	    ${FILESDIR}/vpn-user-portal.conf \
	    ${FILESDIR}/vpn.host.conf \
	    ${LPREFIX}/share/examples/vpn-user-portal/

	${INSTALL_DATA_DIR} ${LPREFIX}/libexec/vpn-user-portal
	cd ${WRKSRC}/libexec; for file in *.php; do \
		${INSTALL_SCRIPT} $$file \
		    ${LPREFIX}/libexec/vpn-user-portal/$${file%.php}; \
	done

	cd ${WRKSRC}/bin; for file in *.php; do \
		${INSTALL_SCRIPT} $$file \
		    ${LPREFIX}/bin/vpn-user-portal-$${file%.php}; \
	done

	cd ${WRKSRC}; pax -rw * ${PREFIX}/vpn-user-portal/
	cd ${PREFIX}/vpn-user-portal; \
	rm -rf vendor/fkooman/*/.git* *.md LICENSE* Makefile \
	    composer* dev phpstan* psalm* testing {,vendor/*/*/}tests \
	    vendor/*/*/example bin config libexec; \
	find . -name '*${PATCHORIG}' -delete

	cd ${PREFIX}/vpn-user-portal; \
	ln -s ${SYSCONFDIR}/vpn-user-portal config; \
	ln -s ${SYSCONFDIR}/vpn-user-portal/data data

# fetch PHP deps and generate an autoload file covering them all
dist:
	@set -x; t=`mktemp -d /tmp/vendor.XXXXXXXXXX`; \
	f=$$t/${DISTNAME}-vendor.tar.xz; \
	cd $$t; \
	xzcat ${FULLDISTDIR}/${DISTNAME}.tar.xz | tar xf -; \
	cd ${WRKDIST:C,^.*/,,}; \
	composer install --no-dev --ignore-platform-req=ext-gmp --ignore-platform-req=ext-pdo_sqlite; \
	echo tarring; tar cf - vendor | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/; \
	cd -; rm -rf $$t

.include <bsd.port.mk>
