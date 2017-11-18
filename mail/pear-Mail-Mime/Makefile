# $OpenBSD: Makefile,v 1.21 2017/11/18 19:46:38 sthen Exp $

COMMENT=	classes to create and decode MIME messages in PHP

DISTNAME=	Mail_Mime-1.10.2
CATEGORIES=	mail

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MODULES=	www/pear

PKG_ARCH=	*

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=	 lang/php # MODPHP_BIN, for tests
MODPHP_BUILDDEP= No
MODPHP_RUNDEP=	 No
TEST_DEPENDS=	 ${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests; pear -d php_bin=${MODPHP_BIN} run-tests

.include <bsd.port.mk>
