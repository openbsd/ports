# $OpenBSD: Makefile,v 1.6 2010/09/23 22:30:30 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}
PKGNAME =	ruby-${DISTNAME}
REVISION =      0

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
