# $OpenBSD: Makefile,v 1.10 2010/12/08 22:13:24 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}

RUN_DEPENDS =	devel/ruby-extlib,${MODRUBY_FLAVOR}>=0.9.13 \
		textproc/ruby-erubis,${MODRUBY_FLAVOR}>=2.6.2 \
		www/ruby-rack,${MODRUBY_FLAVOR} \
		mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16 \
		devel/ruby-bundler,${MODRUBY_FLAVOR} \
		${MODRUBY_RAKE_DEPENDS}

.include <bsd.port.mk>
