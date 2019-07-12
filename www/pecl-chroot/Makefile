# $OpenBSD: Makefile,v 1.25 2019/07/12 20:50:59 sthen Exp $

COMMENT=	PHP support for chroot(2)

DISTNAME=	pecl-chroot-1.0
REVISION=	13

MASTER_SITES=	${MASTER_SITE_BACKUP}

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

# not really PECL but close enough
MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
