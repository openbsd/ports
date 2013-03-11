# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:30 espie Exp $

COMMENT =	sexp helper library for parsetree

DISTNAME =	sexp_processor-3.0.3
REVISION =	5
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}
MODRUBY_TEST = rake


.include <bsd.port.mk>
