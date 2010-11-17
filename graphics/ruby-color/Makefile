# $OpenBSD: Makefile,v 1.5 2010/11/17 08:05:16 espie Exp $

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
RUN_DEPENDS =		archivers/ruby-archive-tar-minitar,${FLAVOR}>=0.5.0 \
			devel/ruby-hoe,${FLAVOR}

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} test_all.rb

.include <bsd.port.mk>
