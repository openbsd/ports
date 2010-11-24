# $OpenBSD: Makefile,v 1.8 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.0.4
REVISION =	2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0.1 \
		devel/ruby-parsetree,${MODRUBY_FLAVOR}>=2.3.0

REGRESS_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR} \
		  devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
