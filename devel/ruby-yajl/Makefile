# $OpenBSD: Makefile,v 1.11 2018/06/13 22:26:52 jeremy Exp $

COMMENT=	Ruby bindings for the Yajl JSON library

DISTNAME=	yajl-ruby-1.3.0
REVISION =	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/brianmario/yajl-ruby

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS=	${BUILD_PKGPATH}
MODRUBY_TEST=	rspec3

.include <bsd.port.mk>
