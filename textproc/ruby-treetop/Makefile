# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.3.0
REVISION =	2
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.2.5

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
