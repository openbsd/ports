# $OpenBSD: Makefile,v 1.11 2012/04/19 21:30:38 sthen Exp $

COMMENT=	PHP support for chroot(2)

DISTNAME=	pecl-chroot-1.0
REVISION=	4

MASTER_SITES=	${MASTER_SITE_BACKUP}

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# not really PECL but close enough
MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
