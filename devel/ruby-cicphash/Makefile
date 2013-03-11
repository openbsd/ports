# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:29 espie Exp $

COMMENT =	case insensitive, case preserving hash class for ruby

DISTNAME =	cicphash-1.0.0
REVISION =	3
CATEGORIES =	devel

HOMEPAGE=	http://cicphash.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-test:
	cd ${WRKSRC} && ${RUBY} -I . test/test_cicphash.rb

.include <bsd.port.mk>
