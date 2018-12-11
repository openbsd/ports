# $OpenBSD: Makefile,v 1.24 2018/12/11 12:33:26 sthen Exp $

COMMENT=	PHP support for chroot(2)

DISTNAME=	pecl-chroot-1.0
REVISION=	13

MASTER_SITES=	${MASTER_SITE_BACKUP}

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

# not really PECL but close enough
MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
