# $OpenBSD: Makefile,v 1.23 2017/11/14 17:10:18 jeremy Exp $

COMMENT=		modular Ruby webserver interface

DISTNAME=		rack-2.0.3
CATEGORIES=		www

HOMEPAGE=		http://rack.github.io/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/spec_*.rb

.include <bsd.port.mk>
