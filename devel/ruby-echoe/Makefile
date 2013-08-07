# $OpenBSD: Makefile,v 1.13 2013/08/07 21:57:49 naddy Exp $

COMMENT =	tasks for documentation, extension compiling, testing

DISTNAME =	echoe-3.2
REVISION =	7
CATEGORIES =	devel

HOMEPAGE =	https://github.com/fauna

# AFL v3.0
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-rubyforge,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
