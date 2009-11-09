# $OpenBSD: Makefile,v 1.4 2009/11/09 17:09:22 bernd Exp $

COMMENT =	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME =	merb-core-${VERSION}
PKGNAME =	ruby-${DISTNAME}p0

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
