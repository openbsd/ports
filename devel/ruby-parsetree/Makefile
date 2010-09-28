# $OpenBSD: Makefile,v 1.8 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	extracts the parse tree for an entire class or a method

DISTNAME =	ParseTree-3.0.4
PKGNAME =	ruby-${DISTNAME:L}
REVISION =      0
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
RUN_DEPENDS =		:ruby-rubyinline->=3.7.0:devel/ruby-rubyinline \
			:ruby-sexp_processor->=3.0.0:devel/ruby-sexp_processor \

GEM_SKIPDEPENDS =	hoe

REGRESS_DEPENDS =	::devel/ruby-ruby2ruby \
			::devel/ruby-minitest
MODRUBY_REGRESS =	rake

PKG_ARCH =		*

.include <bsd.port.mk>
