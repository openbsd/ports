# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:29 espie Exp $

COMMENT=	install Ruby gems as plugins

DISTNAME=	gem_plugin-0.2.3
REVISION=	6
CATEGORIES=	devel

# RubyLicense
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

.include <bsd.port.mk>
