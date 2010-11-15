# $OpenBSD: Makefile,v 1.10 2010/11/15 19:46:09 espie Exp $

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
RUN_DEPENDS =		STEM->=3.0:devel/ruby-parsetree,${FLAVOR} \
			STEM->=2.0:devel/ruby-ruby_parser,${FLAVOR} \
			STEM->=3.0:devel/ruby-sexp_processor,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS  =	STEM->=2.3.3:devel/ruby-hoe,${FLAVOR}

MODRUBY_REGRESS  =	rake

.include <bsd.port.mk>
