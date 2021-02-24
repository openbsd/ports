# $OpenBSD: Makefile,v 1.28 2021/02/24 21:23:16 sthen Exp $

COMMENT=	PHP support for chroot(2)

DISTNAME=	pecl-chroot-1.0
REVISION=	15

MASTER_SITES=	${MASTER_SITE_BACKUP}

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

# not really PECL but close enough
MODULES=	lang/php/pecl
FLAVORS=	php72 php73 php74
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
