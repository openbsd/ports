# $OpenBSD: Makefile,v 1.9 2013/03/11 11:23:53 espie Exp $

COMMENT =	MIME library for Ruby

DISTNAME =	mime-0.1
REVISION =	5
CATEGORIES =	mail

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby license
PERMIT_PACKAGE_CDROM =   Yes

HOMEPAGE =	http://mime.rubyforge.org/

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/mime_test.rb

.include <bsd.port.mk>
