# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:29 espie Exp $

COMMENT =		simple helper for creating rubygem projects

DISTNAME =		jeweler-1.6.4
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://github.com/technicalpickles/jeweler

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-git,${MODRUBY_FLAVOR}>=1.2.5 \
			devel/ruby-bundler,${MODRUBY_FLAVOR}>=1.0,<2.0 \
			${MODRUBY_RAKE_DEPENDS}

.include <bsd.port.mk>
