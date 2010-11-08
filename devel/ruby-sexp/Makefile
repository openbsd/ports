# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	parse strings of Lisp style s-expressions

DISTNAME =	sexp-0.2.1
REVISION =	1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-rparsec->=1.0:devel/ruby-rparsec,${FLAVOR}

.include <bsd.port.mk>
