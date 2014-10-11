# $OpenBSD: Makefile,v 1.13 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	library to access web resources via HTTP

DISTNAME =	httpclient-2.3.4.1
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	https://github.com/nahi/httpclient

# same as Ruby
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =		${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${RUBY} runner.rb

.include <bsd.port.mk>
