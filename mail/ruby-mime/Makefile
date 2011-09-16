# $OpenBSD: Makefile,v 1.7 2011/09/16 10:31:22 espie Exp $

COMMENT =	MIME library for Ruby

DISTNAME =	mime-0.1
REVISION =	4
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
