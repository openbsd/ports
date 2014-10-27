# $OpenBSD: Makefile,v 1.15 2014/10/27 18:35:10 jasper Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.5.3
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.3.1

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
