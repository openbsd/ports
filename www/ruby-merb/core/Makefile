# $OpenBSD: Makefile,v 1.5 2010/01/02 00:28:56 msf Exp $

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
