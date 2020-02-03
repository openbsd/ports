# $OpenBSD: Makefile,v 1.26 2020/02/03 20:40:39 sthen Exp $

COMMENT=	classes to create and decode MIME messages in PHP

DISTNAME=	Mail_Mime-1.10.5
CATEGORIES=	mail
REVISION=	0

MODULES=	www/pear

PKG_ARCH=	*

# BSD
PERMIT_PACKAGE=	Yes

MODULES+=	 lang/php # MODPHP_BIN, for tests
MODPHP_BUILDDEP= No
MODPHP_RUNDEP=	 No
TEST_DEPENDS=	 ${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests; pear -d php_bin=${MODPHP_BIN} run-tests

.include <bsd.port.mk>
