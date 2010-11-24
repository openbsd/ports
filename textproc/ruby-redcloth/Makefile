# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.2
PKGNAME =	${DISTNAME:L}
REVISION =	2
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

.include <bsd.port.mk>
