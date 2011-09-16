# $OpenBSD: Makefile,v 1.13 2011/09/16 09:24:58 espie Exp $

COMMENT =	generating pure Ruby code easily from ParseTree\'s Sexps

DISTNAME =	ruby2ruby-1.2.4
REVISION =	4
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-parsetree,${MODRUBY_FLAVOR}>=3.0 \
			devel/ruby-ruby_parser,${MODRUBY_FLAVOR}>=2.0 \
			devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS  =	devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.3.3

MODRUBY_REGRESS  =	rake

.include <bsd.port.mk>
