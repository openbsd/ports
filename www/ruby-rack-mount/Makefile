# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:25 jeremy Exp $

COMMENT=		stackable dynamic tree based Rack router

DISTNAME=		rack-mount-0.6.13
REVISION =		0
CATEGORIES=		www

HOMEPAGE=		https://github.com/josh/rack-mount

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
