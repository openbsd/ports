# $OpenBSD: Makefile,v 1.12 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	extracts the parse tree for an entire class or a method

DISTNAME =	ParseTree-3.0.4
PKGNAME =	${DISTNAME:L}
REVISION =	3
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
RUN_DEPENDS =		devel/ruby-rubyinline,${MODRUBY_FLAVOR}>=3.7.0 \
			devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0.0 \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

REGRESS_DEPENDS =	devel/ruby-ruby2ruby,${MODRUBY_FLAVOR} \
			devel/ruby-minitest,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
