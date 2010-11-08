# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.3.0
REVISION =      1
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-polyglot->=0.2.5:devel/ruby-polyglot,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
