# $OpenBSD: Makefile,v 1.12 2019/07/12 21:07:46 sthen Exp $

COMMENT =	MIME library for Ruby

DISTNAME =	mime-0.1
REVISION =	7
CATEGORIES =	mail

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby license
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://ecentryx.com/gems/mime/

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/mime_test.rb

.include <bsd.port.mk>
