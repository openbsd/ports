COMMENT=	debug and development tools for PHP

GH_ACCOUNT=	xdebug
GH_PROJECT=	xdebug
GH_TAGNAME=	3.1.3

CATEGORIES=	devel

HOMEPAGE=	https://xdebug.org/

# own license based on PHP's, see LICENSE
PERMIT_PACKAGE=	Yes

WANTLIB=	m z

COMPILER=	base-clang ports-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

MODPHP_DO_SAMPLE=
PV=		${MODPHP_VERSION}
MODULE_NAME=	xdebug
SUBST_VARS+=	PV MODULE_NAME

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${INSTALL_DATA} ${WRKSRC}/xdebug.ini \
	    ${PREFIX}/share/examples/php-${MODPHP_VERSION}/

TEST_DEPENDS=	lang/php/${MODPHP_VERSION},-cgi \
		lang/php/${MODPHP_VERSION},-dbg

do-test:
	@echo '[main]' > ${WRKDIR}/php.ini
	@echo 'zend_extension=${MODPHP_LIBDIR}/modules/opcache.so' >> ${WRKDIR}/php.ini
	@echo 'zend_extension=${WRKSRC}/modules/xdebug.so' >> ${WRKDIR}/php.ini
	@echo 'xdebug.mode=debug' >> ${WRKDIR}/php.ini
	cd ${WRKSRC}; ${SET_ENV} \
	    ${ALL_TEST_ENV} PHPRC=${WRKDIR}/php.ini PHP_INI_SCAN_DIR=no \
	    ${MODPHP_BIN} run-xdebug-tests.php -q

.include <bsd.port.mk>
