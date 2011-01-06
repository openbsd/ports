# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:24 jeremy Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.4.9
REVISION =	0
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.3.1

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
