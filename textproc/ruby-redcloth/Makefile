# $OpenBSD: Makefile,v 1.5 2009/08/20 22:29:38 bernd Exp $

SHARED_ONLY =	Yes

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.2
PKGNAME =	ruby-${DISTNAME:L}
CATEGORIES =	textproc

HOMEPAGE =	http://redcloth.org/

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

MODRUBY_REGRESS =	rspec

.include <bsd.port.mk>
