# $OpenBSD: Makefile,v 1.28 2020/03/02 15:17:30 sthen Exp $

COMMENT=	classes to create and decode MIME messages in PHP

DISTNAME =	Mail_Mime-1.10.7
CATEGORIES=	mail

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
