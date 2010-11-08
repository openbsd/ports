# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.0.4
REVISION =      1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-sexp_processor->=3.0.1:devel/ruby-sexp_processor,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-parsetree->=2.3.0:devel/ruby-parsetree,${FLAVOR}

REGRESS_DEPENDS = :${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR} \
		  :${MODRUBY_PKG_PREFIX}-minitest-*:devel/ruby-minitest,${FLAVOR}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
