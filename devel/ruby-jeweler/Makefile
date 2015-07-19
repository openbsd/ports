# $OpenBSD: Makefile,v 1.7 2015/07/19 02:10:31 jeremy Exp $

COMMENT =		simple helper for creating rubygem projects

DISTNAME =		jeweler-1.8.4
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		https://github.com/technicalpickles/jeweler

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-git,${MODRUBY_FLAVOR}>=1.2.5 \
			devel/ruby-bundler,${MODRUBY_FLAVOR}>=1.0,<2.0

.include <bsd.port.mk>
