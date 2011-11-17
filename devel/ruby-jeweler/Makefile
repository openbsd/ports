# $OpenBSD: Makefile,v 1.1.1.1 2011/11/17 15:28:42 jeremy Exp $

COMMENT =		simple helper for creating rubygem projects

DISTNAME =		jeweler-1.6.4
CATEGORIES =		devel

HOMEPAGE =		https://github.com/technicalpickles/jeweler

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-git,${MODRUBY_FLAVOR}>=1.2.5 \
			devel/ruby-bundler,${MODRUBY_FLAVOR}>=1.0,<2.0 \
			${MODRUBY_RAKE_DEPENDS}

# Jeweler ships with regress tests, but it's a small library
# with a ton of unported regress dependencies, and not worth the
# effort to port all of the regress dependencies.
NO_REGRESS =		Yes

.include <bsd.port.mk>
