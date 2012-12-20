# $OpenBSD: Makefile,v 1.1.1.1 2012/12/20 16:20:31 jeremy Exp $

COMMENT =	ruby DSL around a subset of XPath 1.0

DISTNAME =	xpath-0.1.4
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/xpath

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.3,<2.0

REGRESS_DEPENDS =	devel/ruby-bundler,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rspec
MODRUBY_REGRESS_DIR =	${WRKDIST}/spec
MODRUBY_REGRESS_TARGET = *_spec.rb

.include <bsd.port.mk>
