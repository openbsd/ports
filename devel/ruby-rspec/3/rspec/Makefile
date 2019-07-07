#  $OpenBSD: Makefile,v 1.13 2019/07/07 18:46:44 jasper Exp $

COMMENT =		ruby framework for Behaviour Driven Development
V =			3.8.0
DISTNAME =		rspec-$V
REVISION =		1

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-rspec/3/core,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/3/expectations,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/3/mocks,${MODRUBY_FLAVOR}>=$V

.include <bsd.port.mk>
