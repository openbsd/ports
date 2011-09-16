# $OpenBSD: Makefile,v 1.5 2011/09/16 09:24:58 espie Exp $

COMMENT =	build and package Ruby extensions using Rake as glue

DISTNAME =	rake-compiler-0.7.9
REVISION=		0
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
	rm ${WRKSRC}/lib/rake/extensiontask.rb.beforesubst \
		${WRKSRC}/tasks/bin/cross-ruby.rake.beforesubst

REGRESS_DEPENDS = devel/ruby-isolate,${MODRUBY_FLAVOR}
MODRUBY_REGRESS = rake rspec

.include <bsd.port.mk>
