# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	extracts the parse tree for an entire class or a method

DISTNAME =	ParseTree-3.0.4
PKGNAME =	${DISTNAME:L}
REVISION =      1
CATEGORIES =	devel

HOMEPAGE =	http://www.zenspider.com/ZSS/Products/ParseTree/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-rubyinline->=3.7.0:devel/ruby-rubyinline,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-sexp_processor->=3.0.0:devel/ruby-sexp_processor,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-ruby2ruby-*:devel/ruby-ruby2ruby,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-minitest-*:devel/ruby-minitest,${FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
