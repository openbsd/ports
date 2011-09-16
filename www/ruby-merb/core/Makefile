# $OpenBSD: Makefile,v 1.12 2011/09/16 12:00:08 espie Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}
REVISION =	1

RUN_DEPENDS =	devel/ruby-extlib,${MODRUBY_FLAVOR}>=0.9.13 \
		textproc/ruby-erubis,${MODRUBY_FLAVOR}>=2.6.2 \
		www/ruby-rack,${MODRUBY_FLAVOR} \
		mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16 \
		devel/ruby-bundler,${MODRUBY_FLAVOR} \
		${MODRUBY_RAKE_DEPENDS}

.include <bsd.port.mk>
