# $OpenBSD: Makefile,v 1.9 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}
REVISION =	3

RUN_DEPENDS =	devel/ruby-extlib,${MODRUBY_FLAVOR} \
		textproc/ruby-erubis,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR} \
		mail/ruby-mime-types,${MODRUBY_FLAVOR} \
		sysutils/ruby-thor,${MODRUBY_FLAVOR} \
		converters/ruby-json,${MODRUBY_FLAVOR} \
		${MODRUBY_RAKE_DEPENDS} \
		${MODRUBY_RSPEC_DEPENDS}

.include <bsd.port.mk>
