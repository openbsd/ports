# $OpenBSD: Makefile,v 1.2 2010/12/21 17:15:14 jeremy Exp $

COMMENT =	build and package Ruby extensions using Rake as glue

DISTNAME =	rake-compiler-0.7.5
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://github.com/luislavena/rake-compiler

MAINTAINER  =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS}

pre-configure:
	${SUBST_CMD} -DMAKE_PROGRAM=${MAKE_PROGRAM} \
		${WRKSRC}/lib/rake/extensiontask.rb \
		${WRKSRC}/tasks/bin/cross-ruby.rake

REGRESS_DEPENDS = devel/ruby-isolate,${MODRUBY_FLAVOR}
MODRUBY_REGRESS = rake rspec

.include <bsd.port.mk>
