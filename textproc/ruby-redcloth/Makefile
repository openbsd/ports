# $OpenBSD: Makefile,v 1.15 2011/11/09 00:17:38 jeremy Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.7
PKGNAME =	${DISTNAME:L}
REVISION=	1
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
