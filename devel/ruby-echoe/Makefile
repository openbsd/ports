# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:29 espie Exp $

COMMENT =	tasks for documentation, extension compiling, testing

DISTNAME =	echoe-3.2
REVISION =	6
CATEGORIES =	devel

HOMEPAGE =	http://github.com/fauna

# AFL v3.0
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-rubyforge,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
