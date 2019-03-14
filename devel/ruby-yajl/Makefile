# $OpenBSD: Makefile,v 1.12 2019/03/14 07:38:48 sebastia Exp $

COMMENT=	Ruby bindings for the Yajl JSON library

DISTNAME=	yajl-ruby-1.4.1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/brianmario/yajl-ruby

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS=	${BUILD_PKGPATH}
MODRUBY_TEST=	rspec3

.include <bsd.port.mk>
