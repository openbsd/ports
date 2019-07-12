# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:59 sthen Exp $

COMMENT =		simple helper for creating rubygem projects

DISTNAME =		jeweler-1.8.4
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		https://github.com/technicalpickles/jeweler

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-git,${MODRUBY_FLAVOR}>=1.2.5 \
			devel/ruby-bundler,${MODRUBY_FLAVOR}>=1.0,<2.0

.include <bsd.port.mk>
