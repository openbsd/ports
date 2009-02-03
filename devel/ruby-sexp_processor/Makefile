# $OpenBSD: Makefile,v 1.2 2009/02/03 12:20:11 pirofti Exp $

COMMENT =	sexp helper library for parsetree

DISTNAME =	sexp_processor-3.0.1
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=parsetree/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

GEM_SKIPDEPENDS =	hoe

REGRESS_DEPENDS = ::devel/ruby-rake \
		  ::devel/ruby-hoe

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

PKG_ARCH =	*

.include <bsd.port.mk>
