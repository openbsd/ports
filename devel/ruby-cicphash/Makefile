# $OpenBSD: Makefile,v 1.8 2017/11/20 20:57:17 jeremy Exp $

COMMENT =	case insensitive, case preserving hash class for ruby

DISTNAME =	cicphash-1.0.0
REVISION =	5
CATEGORIES =	devel

HOMEPAGE=	https://github.com/jeremyevans/ruby-cicphash

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-test:
	cd ${WRKSRC} && ${RUBY} -I . test/test_cicphash.rb

.include <bsd.port.mk>
