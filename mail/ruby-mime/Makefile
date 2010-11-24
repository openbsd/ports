# $OpenBSD: Makefile,v 1.5 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	MIME library for Ruby

DISTNAME =	mime-0.1
REVISION =	2
CATEGORIES =	mail

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby license
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

HOMEPAGE =	http://mime.rubyforge.org/

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/mime_test.rb

.include <bsd.port.mk>
