# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	generating pure Ruby code easily from ParseTree\'s Sexps

DISTNAME =	ruby2ruby-1.2.4
REVISION =	1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-parsetree->=3.0:devel/ruby-parsetree,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-ruby_parser->=2.0:devel/ruby-ruby_parser,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-sexp_processor->=3.0:devel/ruby-sexp_processor,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS  =	:${MODRUBY_PKG_PREFIX}-hoe->=2.3.3:devel/ruby-hoe,${FLAVOR}

MODRUBY_REGRESS  =	rake

.include <bsd.port.mk>
