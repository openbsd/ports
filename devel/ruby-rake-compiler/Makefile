# $OpenBSD: Makefile,v 1.13 2019/07/12 21:07:45 sthen Exp $

COMMENT =	build and package Ruby extensions using Rake as glue

DISTNAME =	rake-compiler-0.7.9
REVISION =	6
CATEGORIES =	devel

HOMEPAGE =	https://github.com/luislavena/rake-compiler

MAINTAINER  =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

pre-configure:
	${SUBST_CMD} -DMAKE_PROGRAM=${MAKE_PROGRAM} \
		${WRKSRC}/lib/rake/extensiontask.rb \
		${WRKSRC}/tasks/bin/cross-ruby.rake
	rm ${WRKSRC}/lib/rake/extensiontask.rb.beforesubst \
		${WRKSRC}/tasks/bin/cross-ruby.rake.beforesubst

TEST_DEPENDS = devel/ruby-isolate,${MODRUBY_FLAVOR}
MODRUBY_TEST = rake rspec

.include <bsd.port.mk>
