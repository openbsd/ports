# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	parse strings of Lisp style s-expressions

DISTNAME =	sexp-0.2.1
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-rparsec->=1.0:devel/ruby-rparsec

PKG_ARCH =		*

.include <bsd.port.mk>
