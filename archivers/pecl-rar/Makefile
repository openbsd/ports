# $OpenBSD: Makefile,v 1.11 2012/08/23 19:35:31 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-2.0.0
CATEGORIES=	archivers
REVISION=	7

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m stdc++

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
