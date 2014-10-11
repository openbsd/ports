# $OpenBSD: Makefile,v 1.14 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.4.14
REVISION =	1
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.3.1

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
