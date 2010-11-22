# $OpenBSD: Makefile,v 1.8 2010/11/22 08:36:54 espie Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}
REVISION =      2

RUN_DEPENDS =	devel/ruby-extlib,${FLAVOR} \
		textproc/ruby-erubis,${FLAVOR} \
		www/ruby-rack,${FLAVOR} \
		mail/ruby-mime-types,${FLAVOR} \
		sysutils/ruby-thor,${FLAVOR} \
		converters/ruby-json,${FLAVOR} \
		${MODRUBY_RAKE_DEPENDS} \
		${MODRUBY_RSPEC_DEPENDS}

.include <bsd.port.mk>
