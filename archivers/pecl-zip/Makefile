# $OpenBSD: Makefile,v 1.9 2012/04/19 21:30:26 sthen Exp $

COMMENT=	PHP support for zip archives
DISTNAME=	zip-1.10.2
REVISION=	5
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
