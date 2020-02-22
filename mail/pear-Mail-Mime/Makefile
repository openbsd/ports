# $OpenBSD: Makefile,v 1.27 2020/02/22 16:57:08 benoit Exp $

COMMENT=	classes to create and decode MIME messages in PHP

DISTNAME =	Mail_Mime-1.10.6
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
