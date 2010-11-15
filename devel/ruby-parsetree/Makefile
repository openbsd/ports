# $OpenBSD: Makefile,v 1.10 2010/11/15 19:46:08 espie Exp $

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
RUN_DEPENDS =		STEM->=3.7.0:devel/ruby-rubyinline,${FLAVOR} \
			STEM->=3.0.0:devel/ruby-sexp_processor,${FLAVOR} \
			devel/ruby-hoe,${FLAVOR}

REGRESS_DEPENDS =	devel/ruby-ruby2ruby,${FLAVOR} \
			devel/ruby-minitest,${FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
