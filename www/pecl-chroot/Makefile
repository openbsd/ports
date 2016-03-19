# $OpenBSD: Makefile,v 1.22 2016/03/19 21:18:38 naddy Exp $

COMMENT=	PHP support for chroot(2)

DISTNAME=	pecl-chroot-1.0
REVISION=	11

MASTER_SITES=	${MASTER_SITE_BACKUP}

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

# not really PECL but close enough
MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
