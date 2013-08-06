# $OpenBSD: Makefile,v 1.5 2013/08/06 18:14:11 jasper Exp $

COMMENT =		ruby framework for Behaviour Driven Development
V =			2.14.1
DISTNAME =		rspec-$V

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-rspec/core,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/expectations,${MODRUBY_FLAVOR}>=2.14.0 \
			devel/ruby-rspec/mocks,${MODRUBY_FLAVOR}>=$V

SUBST_VARS =		MODRUBY_PREFIX

.include <bsd.port.mk>
