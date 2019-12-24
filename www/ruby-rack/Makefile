# $OpenBSD: Makefile,v 1.26 2019/12/24 00:22:26 jeremy Exp $

COMMENT=		modular Ruby webserver interface

DISTNAME=		rack-2.0.8
CATEGORIES=		www

HOMEPAGE=		http://rack.github.io/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/spec_*.rb

.include <bsd.port.mk>
