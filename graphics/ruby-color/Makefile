# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	color value conversion and modification

DISTNAME =	color-1.4.0
REVISION =	1
CATEGORIES =	graphics

HOMEPAGE =	http://color.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-archive-tar-minitar->=0.5.0:archivers/ruby-archive-tar-minitar,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} test_all.rb

.include <bsd.port.mk>
