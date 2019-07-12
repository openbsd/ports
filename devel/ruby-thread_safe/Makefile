# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:00 sthen Exp $

COMMENT=		make thread safe programming in Ruby easier

DISTNAME=		thread_safe-0.3.6
CATEGORIES=		devel

HOMEPAGE=		https://github.com/ruby-concurrency/thread_safe
MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}

# tests fail with some problem in yard
#MODRUBY_TEST=		rake rspec

.include <bsd.port.mk>
