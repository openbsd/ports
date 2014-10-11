# $OpenBSD: Makefile,v 1.17 2014/10/11 19:54:46 jeremy Exp $

COMMENT=	install Ruby gems as plugins

DISTNAME=	gem_plugin-0.2.3
REVISION=	8
CATEGORIES=	devel

# RubyLicense
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

.include <bsd.port.mk>
