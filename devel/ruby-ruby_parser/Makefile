# $OpenBSD: Makefile,v 1.2 2009/08/18 17:42:52 bernd Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.0.3
PKGNAME =	ruby-${DISTNAME}p0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=parsetree/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-sexp_processor->=3.0.1:devel/ruby-sexp_processor \
		:ruby-parsetree->=2.3.0:devel/ruby-parsetree

REGRESS_DEPENDS = ::devel/ruby-hoe \
		  ::devel/ruby-minitest

MODRUBY_REGRESS = rake

PKG_ARCH =	*

.include <bsd.port.mk>
