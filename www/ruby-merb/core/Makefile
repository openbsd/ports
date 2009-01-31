# $OpenBSD: Makefile,v 1.3 2009/01/31 12:40:06 bernd Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}

RUN_DEPENDS =	::devel/ruby-extlib \
		::textproc/ruby-erubis \
		::devel/ruby-rake \
		::devel/ruby-rspec \
		::www/ruby-rack \
		::mail/ruby-mime-types \
		::sysutils/ruby-thor \
		::converters/ruby-json

GEM_SKIPDEPENDS = json_pure

.include <bsd.port.mk>
