#  $OpenBSD: Makefile,v 1.7 2016/06/29 16:14:41 espie Exp $

COMMENT =		ruby framework for Behaviour Driven Development
V =			3.4.0
DISTNAME =		rspec-$V
REVISION =		0

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-rspec/3/core,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/3/expectations,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/3/mocks,${MODRUBY_FLAVOR}>=$V

SUBST_VARS =		MODRUBY_PREFIX

.include <bsd.port.mk>
