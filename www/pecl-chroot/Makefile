# $OpenBSD: Makefile,v 1.23 2018/04/26 15:08:56 sthen Exp $

COMMENT=	PHP support for chroot(2)

DISTNAME=	pecl-chroot-1.0
REVISION=	12

MASTER_SITES=	${MASTER_SITE_BACKUP}

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

# not really PECL but close enough
MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
