# $OpenBSD: Makefile,v 1.5 2012/09/23 16:57:35 jeremy Exp $

COMMENT=		stackable dynamic tree based Rack router

DISTNAME=		rack-mount-0.8.3
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
