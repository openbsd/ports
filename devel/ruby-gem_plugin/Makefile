# $OpenBSD: Makefile,v 1.9 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	install Ruby gems as plugins

DISTNAME=	gem_plugin-0.2.3
PKGNAME=	ruby-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

# RubyLicense
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rake

PKG_ARCH=	*

.include <bsd.port.mk>
