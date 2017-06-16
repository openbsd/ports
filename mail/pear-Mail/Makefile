# $OpenBSD: Makefile,v 1.18 2017/06/16 14:07:30 sthen Exp $

COMMENT=	class that provides multiple interfaces for sending email

DISTNAME=	Mail-1.4.1
CATEGORIES=	mail
EPOCH=		0

MODULES=	www/pear

HOMEPAGE=	http://pear.php.net/package/Mail

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/pear-Net-SMTP>=1.4.1

MODULES+=	 lang/php # MODPHP_BIN, for tests
MODPHP_BUILDDEP= No
MODPHP_RUNDEP=	 No
TEST_DEPENDS=	 ${BASE_PKGPATH}
do-test:
	cd ${WRKSRC}/tests; pear -d php_bin=${MODPHP_BIN} run-tests

.include <bsd.port.mk>
