# $OpenBSD: Makefile,v 1.6 2009/08/10 11:18:10 msf Exp $

COMMENT =	extracts the parse tree for an entire class or a method

DISTNAME =	ParseTree-3.0.4
PKGNAME =	ruby-${DISTNAME:L}
CATEGORIES =	devel

HOMEPAGE =	http://www.zenspider.com/ZSS/Products/ParseTree/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=parsetree/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-rubyinline->=3.7.0:devel/ruby-rubyinline \
			:ruby-sexp_processor->=3.0.0:devel/ruby-sexp_processor \

GEM_SKIPDEPENDS =	hoe

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-ruby2ruby \
			::devel/ruby-minitest

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
