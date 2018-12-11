# $OpenBSD: Makefile,v 1.2 2018/12/11 12:33:26 sthen Exp $

COMMENT=		PHP wrapper for pledge(2) and unveil(2)

DISTNAME=		pledge-2.0.2
REVISION=		0

CATEGORIES=		www

HOMEPAGE=		https://github.com/tvlooy/php-pledge

MAINTAINER=		Tom Van Looy <tom@ctors.net>

# PHP
PERMIT_PACKAGE_CDROM=	Yes

# override default; only compatible with 7.2+
FLAVOR=			php72
FLAVORS=		php72

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
