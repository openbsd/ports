# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}
REVISION =      2

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-extlib-*:devel/ruby-extlib,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-erubis-*:textproc/ruby-erubis,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-rack-*:www/ruby-rack,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-mime-types-*:mail/ruby-mime-types,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-thor-*:sysutils/ruby-thor,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-json-*:converters/ruby-json,${FLAVOR} \
		${MODRUBY_RAKE_DEPENDS} \
		${MODRUBY_RSPEC_DEPENDS}

.include <bsd.port.mk>
