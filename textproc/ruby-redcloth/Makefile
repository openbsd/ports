# $OpenBSD: Makefile,v 1.4 2009/05/19 21:03:44 pirofti Exp $

SHARED_ONLY =	Yes

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.1.9
PKGNAME =	ruby-${DISTNAME:L}
CATEGORIES =	textproc

HOMEPAGE =	http://www.whytheluckystiff.net/ruby/redcloth/

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=redcloth/}

MODULES =	lang/ruby

WANTLIB =	c m

LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE = ruby gem

REGRESS_DEPENDS =	::devel/ruby-echoe

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
