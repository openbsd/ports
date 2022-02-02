# $OpenBSD: Makefile,v 1.2 2022/02/02 11:27:07 sthen Exp $

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
	@echo 'extension_dir=${MODPHP_LIBDIR}/modules' >> ${WRKDIR}/php.ini
	@echo 'zend_extension=opcache.so' >> ${WRKDIR}/php.ini
	@echo 'zend_extension=xdebug.so' >> ${WRKDIR}/php.ini
	@echo 'xdebug.mode=debug' >> ${WRKDIR}/php.ini

	cd ${WRKSRC}; \
	PHPRC=${WRKDIR}/php.ini PHP_INI_SCAN_DIR=no \
	TEST_PHP_EXECUTABLE=${MODPHP_BIN} \
	TEST_PHP_CGI_EXECUTABLE=${MODPHP_BIN:S/php/php-cgi/} \
	TEST_PHPDBG_EXECUTABLE=${MODPHP_BIN:S/php/phpdbg/} \
	${MODPHP_BIN} run-xdebug-tests.php -q

.include <bsd.port.mk>
