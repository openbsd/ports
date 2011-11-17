# $OpenBSD: Makefile,v 1.1 2011/11/17 15:15:27 jeremy Exp $

COMMENT =		ruby framework for Behaviour Driven Development
DISTNAME =		rspec-2.7.0

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-rspec/core,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/expectations,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/mocks,${MODRUBY_FLAVOR}

SUBST_VARS =		MODRUBY_PREFIX

.include <bsd.port.mk>
