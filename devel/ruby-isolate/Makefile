# $OpenBSD: Makefile,v 1.6 2012/09/23 16:57:33 jeremy Exp $

COMMENT =	very simple RubyGems sandbox

DISTNAME =	isolate-3.2.1
REVISION =	1
CATEGORIES =	devel

HOMEPAGE=	http://github.com/jbarnette/isolate

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

REGRESS_DEPENDS = devel/ruby-minitest,${MODRUBY_FLAVOR} \
	 	  devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.12.3
MODRUBY_REGRESS = testrb
MODRUBY_REGRESS_ENV = RUBYOPT=-rubygems
MODRUBY_REGRESS_TARGET = -I . -I ../lib test_*.rb
MODRUBY_REGRESS_DIR = ${WRKSRC}/test

.include <bsd.port.mk>
