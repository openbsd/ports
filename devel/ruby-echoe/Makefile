# $OpenBSD: Makefile,v 1.8 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	tasks for documentation, extension compiling, testing

DISTNAME =	echoe-3.2
REVISION =	3
CATEGORIES =	devel

HOMEPAGE =	http://github.com/fauna

# AFL v3.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-rubyforge,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
