# $OpenBSD: Makefile,v 1.6 2010/09/23 22:30:29 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.2
PKGNAME =	ruby-${DISTNAME:L}
REVISION =	0
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
