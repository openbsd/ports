# $OpenBSD: Makefile,v 1.5 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	sexp helper library for parsetree

DISTNAME =	sexp_processor-3.0.3
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

GEM_SKIPDEPENDS =	hoe

REGRESS_DEPENDS = ::devel/ruby-hoe
MODRUBY_REGRESS = rake

PKG_ARCH =	*

.include <bsd.port.mk>
