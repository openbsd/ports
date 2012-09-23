# $OpenBSD: Makefile,v 1.3 2012/09/23 16:57:33 jeremy Exp $

COMMENT =		simple helper for creating rubygem projects

DISTNAME =		jeweler-1.6.4
REVISION =		0
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

.include <bsd.port.mk>
