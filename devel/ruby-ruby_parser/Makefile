# $OpenBSD: Makefile,v 1.7 2010/11/15 19:46:09 espie Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.0.4
REVISION =      1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	STEM->=3.0.1:devel/ruby-sexp_processor,${FLAVOR} \
		STEM->=2.3.0:devel/ruby-parsetree,${FLAVOR}

REGRESS_DEPENDS = devel/ruby-hoe,${FLAVOR} \
		  devel/ruby-minitest,${FLAVOR}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
