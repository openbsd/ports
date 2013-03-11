# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:30 espie Exp $

COMMENT =	build and package Ruby extensions using Rake as glue

DISTNAME =	rake-compiler-0.7.9
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	http://github.com/luislavena/rake-compiler

MAINTAINER  =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS}

pre-configure:
	${SUBST_CMD} -DMAKE_PROGRAM=${MAKE_PROGRAM} \
		${WRKSRC}/lib/rake/extensiontask.rb \
		${WRKSRC}/tasks/bin/cross-ruby.rake
	rm ${WRKSRC}/lib/rake/extensiontask.rb.beforesubst \
		${WRKSRC}/tasks/bin/cross-ruby.rake.beforesubst

TEST_DEPENDS = devel/ruby-isolate,${MODRUBY_FLAVOR}
MODRUBY_TEST = rake rspec

.include <bsd.port.mk>
