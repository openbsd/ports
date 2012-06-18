# $OpenBSD: Makefile,v 1.10 2012/06/18 07:56:13 ajacoutot Exp $

COMMENT=	support for PHP archives (.phar)
DISTNAME=	phar-2.0.0
REVISION=	7

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-bz2

.include <bsd.port.mk>
