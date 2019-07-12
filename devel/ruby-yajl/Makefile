# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:00 sthen Exp $

COMMENT=	Ruby bindings for the Yajl JSON library

DISTNAME=	yajl-ruby-1.4.1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/brianmario/yajl-ruby

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS=	${BUILD_PKGPATH}
MODRUBY_TEST=	rspec3

.include <bsd.port.mk>
