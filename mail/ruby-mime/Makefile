# $OpenBSD: Makefile,v 1.1.1.1 2008/11/24 09:40:35 pirofti Exp $

COMMENT =	MIME library for Ruby

DISTNAME =	mime-0.1
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	mail

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby license
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

HOMEPAGE =	http://mime.rubyforge.org/
MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=mime/}

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem
PKG_ARCH =	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/mime_test.rb

.include <bsd.port.mk>
