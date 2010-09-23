# $OpenBSD: Makefile,v 1.7 2010/09/23 22:30:27 jeremy Exp $

COMMENT =	generating pure Ruby code easily from ParseTree\'s Sexps

DISTNAME =	ruby2ruby-1.2.4
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=seattlerb/}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-parsetree->=3.0:devel/ruby-parsetree \
			:ruby-ruby_parser->=2.0:devel/ruby-ruby_parser \
			:ruby-sexp_processor->=3.0:devel/ruby-sexp_processor

CONFIGURE_STYLE =	ruby gem

PKG_ARCH = *

REGRESS_DEPENDS  =	:ruby-hoe->=2.3.3:devel/ruby-hoe

MODRUBY_REGRESS  =	rake

.include <bsd.port.mk>
