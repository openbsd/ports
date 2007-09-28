# $OpenBSD: Makefile,v 1.5 2007/09/28 18:42:10 bernd Exp $

COMMENT=	install Ruby gems as plugins

DISTNAME=	gem_plugin-0.2.2
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	devel

# RubyLicense
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=mongrel/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rake

PKG_ARCH=	*

.include <bsd.port.mk>
