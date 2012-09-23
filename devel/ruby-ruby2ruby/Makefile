# $OpenBSD: Makefile,v 1.14 2012/09/23 16:58:40 jeremy Exp $

COMMENT =	generating pure Ruby code easily from ParseTree\'s Sexps

DISTNAME =	ruby2ruby-1.2.4
REVISION =	5
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ruby_parser,${MODRUBY_FLAVOR}>=2.0 \
			devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS  =	devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.3.3

MODRUBY_REGRESS  =	rake

.include <bsd.port.mk>
