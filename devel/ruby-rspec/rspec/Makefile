# $OpenBSD: Makefile,v 1.4 2013/04/23 07:41:17 jasper Exp $

COMMENT =		ruby framework for Behaviour Driven Development
V =			2.13.0
DISTNAME =		rspec-$V

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-rspec/core,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/expectations,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/mocks,${MODRUBY_FLAVOR}>=$V

SUBST_VARS =		MODRUBY_PREFIX

.include <bsd.port.mk>
