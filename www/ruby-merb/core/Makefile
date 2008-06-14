# $OpenBSD: Makefile,v 1.2 2008/06/14 23:59:37 landry Exp $

COMMENT=	fast, lightweight MVC framework for Ruby - merb-core

DISTNAME=	merb-core-${VERSION}
PKGNAME=	ruby-${DISTNAME}p0

RUN_DEPENDS=	::textproc/ruby-erubis \
		::devel/ruby-rake \
		::devel/ruby-rspec \
		::www/ruby-rack \
		::textproc/ruby-hpricot \
		::mail/ruby-mime-types \
		::converters/ruby-json

GEM_SKIPDEPENDS=json_pure

REGRESS_DEPENDS=::www/ruby-mongrel

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake specs

.include <bsd.port.mk>
