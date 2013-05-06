# $OpenBSD: Makefile,v 1.14 2013/05/06 06:33:13 jasper Exp $

COMMENT =		high-level IO library for Ruby

DISTNAME =		highline-1.6.18
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
