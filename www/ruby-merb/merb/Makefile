# $OpenBSD: Makefile,v 1.3 2008/06/14 23:59:37 landry Exp $

COMMENT=	fast, lightweight MVC framework for Ruby

DISTNAME=	merb-${VERSION}
PKGNAME=	ruby-${DISTNAME}p0

RUN_DEPENDS=	:ruby-merb-core-${VERSION}*:www/ruby-merb/core \
		:ruby-merb-more-${VERSION}*:www/ruby-merb/more \
		::www/ruby-mongrel

.include <bsd.port.mk>
