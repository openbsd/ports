# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:47 espie Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.4.9
REVISION =	2
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.3.1

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
