# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:47 espie Exp $

COMMENT=	support for PHP archives (.phar)
DISTNAME=	phar-2.0.0
REVISION=	9

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-bz2

.include <bsd.port.mk>
