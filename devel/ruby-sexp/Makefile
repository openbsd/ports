# $OpenBSD: Makefile,v 1.1.1.1 2008/10/27 19:43:27 pirofti Exp $

COMMENT =	parse strings of Lisp style s-expressions

DISTNAME =	sexp-0.2.1
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=sexp/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-rparsec->=1.0:devel/ruby-rparsec

PKG_ARCH =		*

.include <bsd.port.mk>
