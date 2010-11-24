# $OpenBSD: Makefile,v 1.8 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	sexp helper library for parsetree

DISTNAME =	sexp_processor-3.0.3
REVISION =	2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}
MODRUBY_REGRESS = rake


.include <bsd.port.mk>
