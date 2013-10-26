# $OpenBSD: Makefile,v 1.15 2013/10/26 23:55:35 jeremy Exp $

COMMENT =		high-level IO library for Ruby

DISTNAME =		highline-1.6.18
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://highline.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST=	rake

TEST_DEPENDS =	devel/ruby-rdoc,${MODRUBY_FLAVOR}

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -type f -name \*.gitignore \
		-or -name \*.cvsignore -or -name Rakefile \
		-or -name setup.rb | xargs rm
	@rmdir ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/doc

.include <bsd.port.mk>
