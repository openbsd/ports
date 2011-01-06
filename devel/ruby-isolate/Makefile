# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	very simple RubyGems sandbox

DISTNAME =	isolate-3.0.0
REVISION =	0
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

# Regress tests don't work
REGRESS_DEPENDS = devel/ruby-minitest,${MODRUBY_FLAVOR} \
	 	  devel/ruby-hoe,${MODRUBY_FLAVOR}

do-regress:
	cd ${WRKSRC}/test && ${RUBY} -rubygems -I . -I ../lib test_isolate.rb

.include <bsd.port.mk>
