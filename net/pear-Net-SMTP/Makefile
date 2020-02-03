# $OpenBSD: Makefile,v 1.24 2020/02/03 20:40:39 sthen Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.9.0
CATEGORIES=	net
REVISION=	0

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/pear-Net-Socket>=1.0.7 \
		security/pear-Auth-SASL

MODULES+=	 lang/php # MODPHP_BIN, for tests
MODPHP_BUILDDEP= No
MODPHP_RUNDEP=	 No
TEST_DEPENDS=	 ${BASE_PKGPATH}
do-test:
	cd ${WRKSRC}/tests; pear -d php_bin=${MODPHP_BIN} run-tests

.include <bsd.port.mk>
