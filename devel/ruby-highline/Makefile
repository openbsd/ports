# $OpenBSD: Makefile,v 1.19 2017/11/20 20:57:17 jeremy Exp $

COMMENT =		high-level IO library for Ruby

DISTNAME =		highline-1.6.21
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://github.com/JEG2/highline

# Ruby license
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET =	-I lib test/*.rb

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -type f -name \*.gitignore \
		-or -name \*.cvsignore -or -name Rakefile \
		-or -name setup.rb | xargs rm
	@rmdir ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/doc

.include <bsd.port.mk>
