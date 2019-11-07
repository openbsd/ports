# $OpenBSD: Makefile,v 1.24 2019/11/07 16:32:27 sthen Exp $

COMMENT=	classes to create and decode MIME messages in PHP

DISTNAME=	Mail_Mime-1.10.4
CATEGORIES=	mail

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

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
