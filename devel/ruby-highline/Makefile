# $OpenBSD: Makefile,v 1.11 2012/01/22 16:46:41 jeremy Exp $

COMMENT =		high-level IO library for Ruby

DISTNAME =		highline-1.6.9
CATEGORIES =		devel

HOMEPAGE =		http://highline.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS=	rake

REGRESS_DEPENDS =	devel/ruby-rdoc,${MODRUBY_FLAVOR}

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -type f -name \*.gitignore \
		-or -name \*.cvsignore -or -name Rakefile \
		-or -name setup.rb | xargs rm
	@rmdir ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/doc

.include <bsd.port.mk>
