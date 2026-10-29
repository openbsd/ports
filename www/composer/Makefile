COMMENT=	dependency manager for PHP

CATEGORIES=	www devel

PORTROACH=	site:https://github.com/composer/composer/archive/

# keep revision above 8.0-stable
V=		2.11.0

SITES=		https://getcomposer.org/download/$V/
DISTNAME=	composer-$V
DISTFILES=	composer-$V{composer}.phar
EXTRACT_SUFX=	.phar
EXTRACT_ONLY=

EPOCH=		0

HOMEPAGE=	https://getcomposer.org/

MODULES=	lang/php

# MIT
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/composer-$V.phar ${PREFIX}/bin/composer

.include <bsd.port.mk>
