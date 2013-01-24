# $OpenBSD: Makefile,v 1.18 2013/01/24 21:22:59 jasper Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.9
PKGNAME =	${DISTNAME:L}
CATEGORIES =	textproc

HOMEPAGE =	http://redcloth.org/

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
